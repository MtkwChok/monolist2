class RankingController < ApplicationController
  
  def want
    @item_hash = Want.group(:item_id).order('count_item_id desc').limit(10).count('item_id')
    @item_ids = @item_hash.keys
  end
  
  def have
    @item_hash = Have.group(:item_id).order('count_item_id desc').limit(10).count('item_id')
    @item_ids = @item_hash.keys
  end

end
