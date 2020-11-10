class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name: '文学・評論'},
    {id: 2, name: 'ノンフィクション'},
    {id: 3, name: 'ビジネス・経済'},
    {id: 4, name: '自己啓発'},
    {id: 5, name: '政治・社会'},
    {id: 6, name: '思想・宗教・哲学'},
    {id: 7, name: 'アート・サブカルチャー'},
    {id: 8, name: '健康・医学'},
    {id: 9, name: 'サイエンス・テクノロジー'},
    {id: 10, name: '趣味・実用'},
    {id: 11, name: '歴史・地理'},
    {id: 12, name: '教育・参考書'},
    {id: 13, name: '勉強法'},
    {id: 14, name: 'ファイナンス'},
    {id: 15, name: 'コンピュータ・IT'},
    {id: 16, name: '検定・資格'},
    {id: 17, name: '伝記・自伝'},
    {id: 18, name: '辞書'},
    {id: 19, name: '語学'},
    {id: 20, name: '脳科学'},
    {id: 21, name: '心理学'}
  ]
  include ActiveHash::Associations
  has_many :books
end