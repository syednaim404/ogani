 <div class="card card-body">
     <div class="list-group">
         <a href="{{ route('customer.dashboard') }}"
             class="list-group-item list-group-item-action {{ Request::route()->getName() == 'customer.dashboard' ? 'active' : '' }} ">Dashboard
         </a>
         <a href="{{ route('customer.profile') }}" class="list-group-item list-group-item-action {{ Request::route()->getName() == 'customer.profile' ? 'active' : '' }}">Profule</a>
         <a href="{{ route('customer.orders') }}" class="list-group-item list-group-item-action {{ Request::route()->getName() == 'customer.orders' ? 'active' : '' }}">Order</a>
         <a href="{{ route('customer.change.password') }}" class="list-group-item list-group-item-action {{ Request::route()->getName() == 'customer.change.password' ? 'active' : '' }}">Chang
             Password</a>
         <a href="{{ route('customer.logout') }}" class="list-group-item list-group-item-action {{ Request::route()->getName() == 'customer.logout' ? 'active' : '' }}">Logout</a>
     </div>
 </div>



 
