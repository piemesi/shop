<ul class="tabs tabs-transparent nav">
    {{--{{dd(url()->current())}}--}}

    {{--{{URL::full()}}--}}
    @php

        if (Voyager::translatable($items)) {
            $items = $items->load('translations');
        }

    @endphp
    @php
        $subMenuItems = [];
    @endphp
    @foreach ($items->sortBy('order') as $item)

        @php

            $originalItem = $item;
            if (Voyager::translatable($item)) {
                $item = $item->translate($options->locale);
            }

            $isActive = null;
            $styles = null;
            $icon = null;

            // Background Color or Color
            if (isset($options->color) && $options->color == true) {
                $styles = 'color:'.$item->color;
            }
            if (isset($options->background) && $options->background == true) {
                $styles = 'background-color:'.$item->color;
            }

            // Check if link is current
            if(url($item->link()) == url()->current()){
                $isActive =  'active bottomborder';
            }elseif( pathinfo(url()->current()) == url($item->link())){
            $isActive =  'active bottomborder';
            }

            // Set Icon
            if(isset($options->icon) && $options->icon == true){
                $icon = '<i class="' . $item->icon_class . '"></i>';
            }

        @endphp

        <li class="tab ">
            @if(url($item->link())==url()->current())
            @endif

            @if(!$originalItem->children->isEmpty())

                <a class="{{ $isActive }} " href="#link{{$item->id}}" target="{{ $item->target }}"
                   style="{{ $styles }}">
                    {!! $icon !!}
                    <span>{{ $item->title }}</span>
                </a>

                @php   $subMenuItems[]=  ['parentItem'=>$item->id, 'items' => $originalItem->children, 'options' => $options];@endphp


            @else

                <a class="{{ $isActive }} direct-link"   href="{{ url($item->link()) }}" target="{{ $item->target }}"
                   style=" {!! $styles !!} ">
                    {!! $icon !!}
                    <span>{{ $item->title }}</span>
                </a>


            @endif
        </li>
    @endforeach

</ul>

<div class="submenu-place">
    @foreach($subMenuItems as $subMenuItem)
        @include('menu.main_menu_item', $subMenuItem)
    @endforeach
</div>
{{--<ul class="tabs tabs-transparent nav">--}}
{{--<li class="tab "><a href="#test1">Информация</a></li>--}}
{{--<li class="tab "><a  href="#test2">Платки, шарфы, палантины</a></li>--}}
{{--<li class="tab"><a class="active" href="#test3">Сумки</a></li>--}}
{{--<li class="tab"><a href="#test4">Аксессуары</a></li>--}}
{{--</ul>--}}