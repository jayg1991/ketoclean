class Food < ActiveRecord::Base
    
    def self.search(title)
        if title
            where('title LIKE ?', "%#{title}%")
        else
            all
        end
    end
    
end
