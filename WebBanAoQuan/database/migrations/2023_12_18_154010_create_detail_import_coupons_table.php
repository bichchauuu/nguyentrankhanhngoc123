<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('detail_import_coupons', function (Blueprint $table) {
            $table->id();
            $table->double('price');
            $table->string('seri', 50);
            $table->integer('quantyti');
            $table->integer('import_coupons_id');
            $table->integer('product_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detail_import_coupons');
    }
};
