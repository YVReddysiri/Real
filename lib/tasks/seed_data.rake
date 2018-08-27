namespace :seed_data do
  desc "TODO"
  task users: :environment do
    (0..100).each do |i|
      User.create(name:"name#{i}",email:"email#{i}",city:"city#{i}",country:"country#{i}")
    end
  end
  task books: :environment do
    (2..100).each do |i|
      Book.create(name:"name#{i}",description:"description#{i}",user_id:i)  
    end
  end
  task products: :environment do  
    (2..100).each do |i|
      Product.create(name:"name#{i}",description:"description#{i}",user_id:i)
    end 
  end
end
