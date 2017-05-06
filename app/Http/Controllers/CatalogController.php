<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Product;
use App\Providers\CategoryServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\View;
use TCG\Voyager\Models\Category;

class CatalogController extends Controller
{

    const PAGINATION_ON_PAGE = 24;

    /**
     * Posts
     *
     * @return void
     */
    public function showItems(Request $request, $pageItem)
    {

         $allCategories = [];
        Category::all()->map(function ($item) use (&$allCategories) {
            $allCategories[$item->slug] = $item;
            return [$item->id => $item->title];
        });


        $currentCategory = $allCategories[$pageItem];
        $filterItem = $pageItem =='accessory' ? 'accessoryId' : 'brandId' ;
        $allProducts = Product::where('category_id', $currentCategory->id)->with($filterItem)->get();

        $products = Product::where('category_id', $currentCategory->id)->with($filterItem)->paginate(self::PAGINATION_ON_PAGE);
        $brands = [];
        foreach ($allProducts as $product) {
            $key = $filterItem == 'accessoryId' ? 'accessory_id' : 'brand_id';
            $brands[$product->$key] = $product->$filterItem;
        }

        if ($request->ajax()) {

            $out = View::make('catalog.products', ['pageItem' => $pageItem, 'products' => $products])->render();
            $navigation = View::make('catalog.navigation', ['pageItem' => $pageItem, 'products' => $products])->render();
            return response()->json(['body' => $out, 'navpanel'=>$navigation]);
        }

        return View::make('catalog.list', ['pageItem' => $pageItem, 'brands' => $brands, 'products' => $products]);

    }

     public function allCategories(){
         return View::make('catalog.category', [ ]);

     }

    public function showBrandItems($pageItem, $brandId)
    {

        $allCategories = [];
        Category::all()->map(function ($item) use (&$allCategories) {
            $allCategories[$item->slug] = $item;
            return [$item->id => $item->title];
        });


        $currentCategory = $allCategories[$pageItem];

        $brands = [];

//        $products = Product::where([['category_id',$currentCategory->id],['brand_id',$brandId]])->with('brandId')->get()->map(function ($item) use (&$brands){
//            $brands[$item->brand_id]=
//                $item->brandId;
//            return  $item;
//        });
        $products = [];
        $filterItem = $pageItem =='accessory' ? 'accessoryId' : 'brandId' ;
        Product::where('category_id', $currentCategory->id)->with($filterItem)->get()->map(function ($item)
        use (&$brands, $brandId, &$products, $filterItem) {
            // dd($item);

            $key = $filterItem == 'accessoryId' ? 'accessory_id' : 'brand_id';
            $brands[$item->$key] =
                $item->$filterItem;

            if ($brandId == $item->$key) {
                $products[] = $item;
            }
        });


        return view('catalog.list', [
            'pageItem' => $pageItem,
            'products' => $products,
            'brands' => $brands,
            'noNav' => true,

        ]);
    }
}
