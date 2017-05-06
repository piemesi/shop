<?php

// Home
Breadcrumbs::register('home', function ($breadcrumbs) {

    $breadcrumbs->push('Главная', route('home'));
});

// Home > Info
Breadcrumbs::register('info', function ($breadcrumbs, $item) {

    $breadcrumbs->parent('home');
    $breadcrumbs->push('Информация', route('info', $item));//$catalog->item
});

// Home > Catalog
Breadcrumbs::register('catalog', function ($breadcrumbs) {

    $breadcrumbs->parent('home');
    $breadcrumbs->push('Каталог', route('catalog'));//$catalog->item
});


// Home > Catalog > [Category]
Breadcrumbs::register('category', function ($breadcrumbs, $category) {

    $categories = Config::get('allCategories');
    $breadcrumbs->parent('catalog');
    $breadcrumbs->push($categories[$category]->name,
        route('category', $category));
});

// Home > Catalog > [Category] > [Item]
Breadcrumbs::register('brand', function ($breadcrumbs, $item, $brand) {

    $filterItem = $item =='accessory' ? 'allAccessoryTypes' : 'allBrands';
    $brands = Config::get($filterItem);
    $breadcrumbs->parent('category', $item);
    $breadcrumbs->push($brands[$brand], route('brand', ['item' => $item, 'brand' => $brand]));
});

// Home > Catalog > [Category] > [Item]
Breadcrumbs::register('product', function ($breadcrumbs, $item, $brand, $product) {
    $breadcrumbs->parent('brand',  $item, $brand);
    $breadcrumbs->push($product, route('product', ['item' => $item, 'brand' => $brand, 'product' => $product]));
});



