#!/usr/bin/perl

use 5.34.0;
use strict;
use warnings;
use lib ("./");
use Semenov01Lib;

# Создание стека
my $stack = Stack->new();

# Добавление в стек элементов
$stack->push("leaven");
$stack->push("wheat flour");
$stack->push("salt");
$stack->push("water");

my $stack_size = $stack->get_size();
say "Stack size: $stack_size\n";
say "Bread recipe:";

# Удаление и вывод элементов стека в консоль
while (!$stack->is_empty()) {
  my $element = $stack->pop();
  say "$element";
}

1;