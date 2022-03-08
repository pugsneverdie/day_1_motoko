import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";

actor {
  
  // Challenge 1 COMPLETE
  public func add(n : Nat, m : Nat) : async Nat {
    return(n + m);
  };


  //Challenge 2 COMPLETE
  public func square(n : Nat) : async Nat {
    return(n * n);

  };


  //Challenge 3 COMPLETE
  public func days_to_seconds(n : Nat) : async Nat {
    
    return(n * 24 * 60 * 60);
  };
  
    //Challenge 4 COMPLETE
    
    //open variable for counter value, free to use in the entire .mo file(?)
  var counter : Nat = 0;
  
  public func increment_counter(n : Nat) : async Nat{
    counter := counter + n;
    return (counter);
  };
  
  //notice this function has no argument, only needs the action, no output
  public func clear_counter() : async () {
    counter := 0;
    return;
  };

  //Challenge 5 COMPLETE

  public func divide(n : Nat, m : Nat) : async Bool {
    return(n % m == 0);
  };


//Challenge 6 COMPLETE

  public func is_even(n : Nat) : async Bool {
    //If remainder of number is zero when divided by 2, it is even, so return true; otherwise, return false
    if(n % 2 == 0)
      return true;
    return false;
    };

//Challenge 7 COMPLETED
//be sure to enclose array type-case with brackets, e.g. [Nat]
  public func sum_of_array(array : [Nat]) : async Nat {
    var sum = 0;
    //for each value in array
    for(val in array.vals())
      //add values in the array from beginning to end
      sum += val;
    return(sum);

  };

//Challenge 8 COMPLETED
  public func maximum(array : [Nat]) : async Nat {
    
    //preliminary trash sorting -- if zero, don't run
    if(array.size() == 0) return 0;

    //create array with no values
    var value = array[0];

    //for each value in array
    for(val in array.vals())
      //if the next value is greater than the previous value
      if(val > value) 
        //succeed the previous value with the larger number
        value := val;
    return(value);

    };

//Challenge 9 COMPLETED
  public func remove_from_array(array : [Nat], n : Nat) : async [Nat] {
    //Write a function remove_from_array that takes 2 parameters : an array of natural numbers and 
    //a natural number n and returns a new array where all occurences of n have been removed (order should remain unchanged).
    var new_array : [Nat] = [];
    for(vals in array.vals()){
      if (vals != n){
        new_array := Array.append<Nat>(new_array, [vals]);
      };
    };
      
  return(new_array)
  };

  /*Challenge 10 INCOMPLETE
  private func _swap(array : [Nat], i : Nat, j : Nat) : [Nat] {
    // Transform our immutable array into a mutable one so we can modify values.
    let array_mutable = Array.thaw<Nat>(array);
    let tmp = array[i];
    array[i] := array[j];
    array[j] := tmp;
    // Transform our mutable array into an immutable array.
    return(Array.freeze<Nat>(array));
  };

  public func selection_sort(array : [Nat]) : async [Nat] {
    var sorted = array;
    let size = array.size();
    // First loop
    for(i in Iter.range(0, size - 1)){
      var index_minimum = i;
      // Second loop to determine the minimum in the sub array
      for(j in Iter.range(i, size - 1)){
        if(sorted[j] < sorted[index_minimum]){
          index_minimum := j;
        };
      };
    sorted := _swap(sorted, index_minimum, i);
    };  
    return(sorted);
  };
  */

};
