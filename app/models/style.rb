class Style < ApplicationRecord
  has_one_attached :photo
  has_many :requests
    attr_accessor :styles

    STYLE_DESCR = ['Blackwork tattoos are characterized by mainly black ink, very bold lines, and a powerful use of negative space.', 'Old school is the easiest tattoo style to identify. Visually, each artist will put their own stamp on an American Traditional piece.', 'Surrealism is art and literature movement from the 2th century, which celebrates the unconscious mind, dreams and fantasy.', 'A tradition with ancient roots in human history, Japanese tattoos are some of the most revered artworks within the tattoo community.', 'The creater of this unusual combination is an italian tattoo artist Lupo Horiokami.', 'It is an awe inspiring thing when an artist creates a 3D work of art on something 2D, like a canvas, a piece of paper, or skin.']

    STYLES = ["Blackwork", "American Traditional", "Surrealism", "Traditional Japanese", "Blackwork Japanese", "Realism"]
    
    def self.style_pics
        ['https://scene360.com/wp-content/uploads/2018/06/3kreuze_09.jpg', 'https://i.pinimg.com/736x/4e/10/bd/4e10bdcc2b426de59f2bc132d5a89a21.jpg', 'https://www.inkedmag.com/.image/t_share/MTU5MDMyMzkxNDQ4NDA1Nzg0/surreal.jpg', 'https://images.saymedia-content.com/.image/t_share/MTczODA2ODk3NDgzMjI4NzMw/japanese-hannya-tattoos-concise-info-on-the-origins-meanings-ideas.jpg', 'https://i.pinimg.com/originals/94/bd/0e/94bd0e2ee73cc7de259cfdc3144de1b8.jpg', 'https://www.pitbulltattoothailand.com/wp-content/uploads/2019/12/pitbull-tattoo-slider-006-1600.jpg']
    end
end
