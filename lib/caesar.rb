class CaesarCipher

  def cipher(sentence, shift)
    alpha_l = ("a".."z").to_a
    alpha_u = ("A".."Z").to_a
   
    chars = sentence.split("")
    new_sentence = ""
    chars.each do |char|
    	if alpha_l.include? char
    	  num = alpha_l.index(char) + shift
    	  if num > 25
    	    new_sentence += alpha_l[num - 26]
    	  else
    	   new_sentence += alpha_l[num]
    	  end
    	else if alpha_u.include? char
    	  num = alpha_u.index(char) + shift
    	  if num > 25
    	    new_sentence += alpha_u[num - 26]
    	  else
    	   new_sentence += alpha_u[num]
    	  end
    	else
    	  new_sentence += " "
    	end
    end
    
  end 
  
  return new_sentence

  end
 
end
