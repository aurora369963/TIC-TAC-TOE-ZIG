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
    var min:u8=0;

    while(true){
        if(min>2)
        const result=isWon(board,turn);

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
    pub fn isWon(matrix:*[3][3]u8,player:u8) u8 {
        //diagonal
        if(matrix[0][0]==player
            and matrix[1][1]==player
            and matrix[2][2]==player)
             return player;
     //anti-diagonal
        if(matrix[0][2]==player
             and matrix[1][1]==player
             and matrix[2][0]==player)
             return player;
        //rows
      for(0..3) |i| {

              if(matrix[i][0]==player
                  and matrix[i][1]==player
                  and matrix[i][2]==player)

                  return player ;


          }

    //col

     for(0..3) |j| {

            if(matrix[0][j]==player and
                matrix[1][j]==player
                and matrix[2][j]==player)
                  return player;

              }





      }
