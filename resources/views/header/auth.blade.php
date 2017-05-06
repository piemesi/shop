<div class="auth">
    <div id="bxdynamic_8k8aZS_start" style="display:none"></div>


    @if(Auth::check())
        <div class="auth_div" style="float: left;
    margin: 0 2px;
    padding: 51px 0;">
<ul  >
            <li class="dropdown" style="list-style: none">
                <i class="fa fa-btn fa-user"></i>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                    {{ Auth::user()->name }} <span class="caret"></span>
                </a>

                <ul class="dropdown-menu" role="menu">
                    <li ><a href="{{ url('/user/profile') }}"> <i class="fa fa-list" aria-hidden="true"></i> Ваш аккаунт</a></li>
                    <li><a href="{{ route('logout') }}"><i class="fa fa-btn fa-sign-out"></i> Выйти</a></li>
                </ul>
            </li>
</ul>
        </div>
    @else
        <div class="sing_in auth_link">
            <a href="{{ route('login') }}">
                Вход
            </a>
        </div>
        <div class="auth_link slash">/</div>
        <div class="reg auth_link">
            <a href="{{ route('register') }}">
                Регистрация
            </a>
        </div>

    @endif


    <div id="bxdynamic_8k8aZS_end" style="display:none"></div>
</div>