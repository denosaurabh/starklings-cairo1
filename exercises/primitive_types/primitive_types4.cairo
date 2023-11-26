// primitive_types4.cairo
// Modify the integer types to make the tests pass.
// Learn how to convert between integer types, and felts.
// Execute `starklings hint primitive_types4` or use the `hint` watch subcommand for a hint.

use traits::Into;
use traits::TryInto;
use option::OptionTrait;

fn sum_u8s(x: u8, y: u8) -> u8 {
    x + y
}

fn sum_big_numbers(x: u16, y: u16) -> u16 {
    x + y
}

fn convert_to_felt(x: u8) -> felt252 { 
   x.into()
}

fn convert_felt_to_u8(x: felt252) -> u8 { 
     x.try_into().unwrap()
}

#[test]
fn test_sum_u8s() {
    assert(sum_u8s(1, 2_u8) == 3_u8, 'Something went wrong');
}
#[test]
fn test_sum_big_numbers() {
    assert(sum_big_numbers(255_u16, 255_u16) == 510_u16, 'Something went wrong');
}

#[test]
fn test_convert_to_felt() {
    assert(convert_to_felt(1_u8) == 1, 'Type conversion went wrong');
}

#[test]
fn test_convert_to_u8() {
    assert(convert_felt_to_u8(1) == 1_u8, 'Type conversion went wrong');
}
