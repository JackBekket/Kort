/*
#  Copyright for Sergey Ponomarev (JackBekket)
#
#  This contracts allow you to automatically register contract you create.
#  And probably (to the moment of reading this will be implemented) signed it (verify)
#
#
*/
contract owned {
    address public owner;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender != owner) throw;
        _
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
}

contract Registrator  is owned{



string public standard = 'registrator 0.0.1';
string public version = '0.0.1';
string public type = 'noncommercial';

//uint public price;

//  mapping (address => mapping (uint => string)) public Links;
// mapping (address => uint256) public balanceOf;

// Array of Owner - Contract - Signed by???
mapping (address => address) public Links;
event Registred (address client, address contract, address signature);

//initialization
function Registrator (uint pricePlace){
//price = pricePlace;

}

function register (address _owner,address _contract){
/*
if (amount<price) throw;
balance0f[msg.sender]=amount;
address client= msg.sender;
Links[address]=link;
Registred(client,amount,link);
*/

Links[owner]=_contract;
}





/*
function safeWithdrawal() onlyOwner {


       if (owner == msg.sender) {
   //      amountToPay=amountRaised;
           if (owner.send(amountRaised)) {

            //   FundTransfer(beneficiary, amountRaised, false);
             //  amountAll=amountAll+amountToPay
           //    amountToPay=0;

          //     amountRaised=0;
           } else {
               //If we fail to send the funds to beneficiary, unlock funders balance
             //  fundingGoalReached = false;
           }
       }
   }
*/



function () {
  throw;
}

function destroy (){
  if (msg.sender == owner) {
        suicide(owner); // send funds to organizer
      }
}

}
