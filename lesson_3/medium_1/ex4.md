# My Solution

Yes, there is a difference.

`rolling_buffer1` mutates the original `buffer` array every time a new element is added regardless if the new element makes `buffer` exceed its max size or not.

`rolling_buffer2` re-assigns its `buffer` array to a newly created array every time a new element is added. The method only mutates `buffer` when the buffer's size is exceeded by a new element that must be added.
