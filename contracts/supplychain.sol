pragma solidity ^0.4.17;

library SupplyChainModel{
    enum ProduceType {Carrots, Lettuce, Potatoes, Ducklings}

    struct Produce {
       ProduceType Type;
       uint PricePerKilo;
       Inspector _inspector;
       Farmer _farmer;
       Distributor _distributor;
       Store _store;

    }

    struct Distributor {
        address _address;

    }

    struct Inspector {
        address _address;
    }

    struct Store {
        address _address;
    }

    struct PublicLabel {

    }

    struct Farmer {
       string Location;
       address _address;
   }
}

library BuyFunction {
    function Buy (SupplyChainModel.Produce _Produce, uint _quantity) {
     uint total = _Produce.PricePerKilo*_quantity;
     _Produce._inspector._address.transfer(total/4);
     _Produce._farmer._address.transfer(total/4);
     _Produce._distributor._address.transfer(total/4);
     _Produce._store._address.transfer(total/4);
 }
}

contract SupplyChain {








}
