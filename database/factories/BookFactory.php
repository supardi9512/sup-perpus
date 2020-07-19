<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Book;
use App\Category;
use Faker\Generator as Faker;

$factory->define(Book::class, function (Faker $faker) {

    $randomNumber = rand(1, 100);
    $cover = "https://picsum.photos/id/{$randomNumber}/200/300";
    
    return [
        'category_id' => Category::inRandomOrder()->first()->id,
        'title' => $faker->sentence(4),
        'description' => $faker->sentence(50),
        'cover' => $cover,
        'qty' => rand(10, 20),
    ];
});
