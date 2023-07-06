#!/usr/bin/perl

# Объявление класса
package Stack;

use 5.34.0;
use strict;
use warnings;

sub new {
  # Ссылка на объект или имя класса
  my $class = shift;

  # Создание хэша, содержащего свойства объекта
  my $self = {
    stack => [],
  };

  # Создание объекта
  bless $self, $class;
  return $self;
}

# Добавление элемента в стек
sub push {
  my ($self, $element) = @_;
  push @{$self->{stack}}, $element;
}

# Удаление и возврат последнего элемента стека
sub pop {
  my $self = shift;
  return pop @{$self->{stack}};
}

# Проверка стека на пустоту
sub is_empty {
  my $self = shift;
  return scalar @{$self->{stack}} == 0;
}

# Возврат размера стека
sub get_size {
  my $self = shift;
  return scalar @{$self->{stack}};
}

1;
