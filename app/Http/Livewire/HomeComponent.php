<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;
use App\Models\Product;
use Livewire\WithPagination;

class HomeComponent extends Component
{
    use WithPagination;
    public function store1($product_id,$product_name,$product_price)
    {
        Cart::add($product_id,$product_name,1,$product_price)->associate('\App\Models\Product');
        session()->flash('success_message','item added in Cart');
        return redirect()->route('shop.cart');

    }
    public function render()
    {
        $products = Product::paginate(12);
        $nproducts = Product::latest()->take(4)->get();
        $newproducts = Product::latest()->take(4)->get();
        $poproducts = Product::latest()->take(16)->get();
        return view('livewire.home-component',['products'=>$products,'nproducts'=>$nproducts,'newproducts'=>$newproducts,'poproducts'=>$poproducts]);
    }
}
