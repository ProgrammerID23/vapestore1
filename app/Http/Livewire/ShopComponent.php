<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;

class ShopComponent extends Component
{
    use WithPagination;

    public function store($prodduct_id,$product_name,$product_price)
    {
        Cart::add($prodduct_id,$product_name,1,$product_price)->associate('\App\Models\Product');
        session()->flash('success_message','item added in Cart');
        return redirect()->route('shop.cart');

    }
    public function render()
    {
        $products = Product::paginate(12);
        $nproducts = Product::latest()->take(4)->get();
        return view('livewire.shop-component',['products'=>$products,'nproducts'=>$nproducts]);
    }
}
