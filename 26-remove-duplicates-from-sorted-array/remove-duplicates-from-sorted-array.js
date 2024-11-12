/**
 * @param {number[]} nums
 * @return {number}
 */

var removeDuplicates = function(nums) {
    let prev = undefined;
    let i = 0;
    let k = 0;

    while (i < nums.length) {
        if (nums[i] === prev){
            nums.splice(i, 1)
        }
        else {
            prev = nums[i];
            i++;
            k++;
        }    
    }

    return k;
};
