// primitive_types3.cairo
// Destructure the `cat` tuple to call print on each member.
// Execute `starklings hint primitive_types3` or use the `hint` watch subcommand for a hint.

use debug::PrintTrait;

fn main() {
    let cat_name = 'Furry McFurson';
    let cat_age = 3;

    cat_name.print();
    cat_age.print();
}