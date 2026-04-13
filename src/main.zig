//3*3 grid
// array of array i.e multi dimension array
// print which player turn and take inpout row and col
// intialize all elements to zero first
// each turn update box
// check any player made the bingo
//

const std=@import("std");
const print=std.debug.print;

pub fn main() !void {
    var board:[3][3]u8 =.{
      {0,0,0},
      {0,0,0},
      {0,0,0}
    };
    const stdin=std.io.getStdIn().reader();


    const buffer:[2]u8=undefined;
    var turn:u8=1;
    while(true){
        const result=isWon(board);

        if(std.mem.equal(result,1)|| std.mem.equal(result,2))
       {
           print("====player {} wins==",.{result});
           break;
       }

       if(std.mem.equal(u8,turn,1)){
           print("PLAYER 1 TURN:::::: ",.{})
           //turn=turn+1;
       }
       if(std.mem.equal(u8,turn,2)){
           print("PLAYER 2 TURN:::::: ",.{})
         //  turn=turn-1;
       }
       const line=try stdin.readUntilDelimiterOrEof(&buffer,'\n');
       var input=std.mem.split(u8,line," ");
       board[input.next()][input.next()]=turn;



    }
    pub fn isWon(matrix:*[3][3]u8) u8 {
        //rows
      for(0..3) |i| {
          if(matrix[i][0]!=@as(u8,0)){
              if(matrix[i][0]==matrix[i][1] and matrix[i][1]==matrix[i][2])
              {
                  return matrix[i][0];
              }

          }
          //col
          /   for(0..3) |j| {
              for(0..3) |i|{
                  if(matrix[i][j]!=@as(u8,0))
              }
              if(matrix[i][0]!=@as(u8,0)){
                  if(matrix[i][0]==matrix[i][1] and matrix[i][1]==matrix[i][2])
                  {
                      return matrix[i][0];
                  }

              }
      }
    }

}
