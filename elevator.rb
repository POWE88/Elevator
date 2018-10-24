class Elevator
    attr_accessor :up_requests, :down_requests, :total_time, :visted_floors

    def initialize()
        @total_time
        @visted_floors = []
        @up_requests = []
        @down_requests = []

    end

    #Method that takes in the time an up request was made and the current floor
    def requestUp(time, fromFloor)

    end

    #Method that takes in the time a down request was made and the current floor
    def requestDown(time, fromFloor)

    end

    #Method that takes in the current floor and the desired floor
    def requestFloor(fromFloor, toFloor)
        @visted_floors << fromFloor
        @visted_floors << toFloor

        #calculate the time needed between floors
        if fromFloor > toFloor
            @total_time = (fromFloor - toFloor) * 10
            @down_requests << fromFloor
            @down_requests << toFloor
            #sort_riders(array)
        else
            @total_time = (toFloor - fromFloor) * 10
            @up_requests << fromFloor
            @up_requests << toFloor
            #sort_riders(array)
        end

    end

    def run()
        @visted_floors
    end

    def get_time()
        @total_time
    end

    def sort_riders(array)
        array.sort_by {|el| el} #make this reverse for down requests. Will need an if statement
    end

end
elevator1 = Elevator.new()

elevator1.requestUp(0,2)
elevator1.requestFloor(2, 6)
elevator1.requestDown(15, 5)
elevator1.requestFloor(5, 4)
elevator1.requestDown(41, 4)
elevator1.requestFloor(4, 1)
elevator1.run()


p elevator1.visted_floors
p elevator1.total_time

p elevator1.sort_riders(elevator1.down_requests)
