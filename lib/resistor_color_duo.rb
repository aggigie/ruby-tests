class ResistorColorDuo
    def self.value(arr)
        colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']
        return (colors.find_index(arr[0]).to_s + colors.find_index(arr[1]).to_s).to_i
    end
end
