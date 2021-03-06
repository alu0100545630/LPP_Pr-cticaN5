# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	
	def test_typecheck_numerador
		assert_raise(ArgumentError) { Fraccion.new('a',3) }
	end
	
	def test_typecheck_denominador
		assert_raise(ArgumentError) { Fraccion.new(3,'a') }
	end
	
	def test_denominador_cero
		assert_raise(RuntimeError) { Fraccion.new(3,0) }
	end
	
	def test_instance_of
		assert_instance_of(Fraccion,Fraccion.new(1,3),"El objeto pertenece a la clase fraccion")
	end
	
	def test_assert_kind_of
		assert_kind_of(Fraccion,Fraccion.new(1,3),"El objeto fraccion es hijo de la clase fraccion")
	end
	
	def test_respond_to
		assert_respond_to(Fraccion.new(1,6),:to_s,"El objeto fraccion tiene un to_s implementado")
	end

	def test_assert
		r1=Fraccion.new(1,2)
		r2=Fraccion.new(1,2)
		if (r1.n==r2.n) and (r1.d==r2.d)
			iguales=true
		else
			iguales=false
		end
		assert(iguales,"Los numeros racionales son distintos")  #assert solo le interesa el valor del booleano
	end
	
	def test_assert_equal
		r1=Fraccion.new(1,2)
		r2=r1
		assert_equal(r1,r2,"error ambos objetos son distintos") #assert equal los objetos tienen que ser el mismo
	end
	
	def test_assert_gcd
		r1=Fraccion.new(5,10)
		r2=Fraccion.new(1,2)
		if (r1.n==r2.n)and(r1.d==r2.d)
			iguales=true
		else
			iguales=false
		end
		assert(iguales,"El algoritmo de máximo común divisor está mal implementado")
		
	end

	def test_assert_sum
		r1=Fraccion.new(5,4)
		r2=Fraccion.new(1,6)
		r3=r1+r2
		r4=Fraccion.new(17,12)
		if (r3.n==r4.n)and(r3.d==r4.d)
		   iguales=true
		else
			iguales=false
		end
		assert(iguales,"La suma no se efectuo correctamente")
	end
	
	def test_assert_resta
		r1=Fraccion.new(5,4)
		r2=Fraccion.new(1,6)
		r3=r1-r2
		r4=Fraccion.new(13,12)
		if (r3.n==r4.n)and(r3.d==r4.d)
			iguales=true
		else
			iguales=false
		end
		assert(iguales,"La resta no se efectuo correctamente")
	end
	
	def test_assert_multiplica
		r1=Fraccion.new(5,4)
		r2=Fraccion.new(1,6)
		r3=r1*r2
		r4=Fraccion.new(5,24)
		if (r3.n==r4.n)and(r3.d==r4.d)
			iguales=true
		else
			iguales=false
		end
		assert(iguales,"La multiplicacion no se efectuo correctamente")
	end
	
	def test_assert_divide
		r1=Fraccion.new(5,4)
		r2=Fraccion.new(1,6)
		r3=r1.div(r2)
		r4=Fraccion.new(15,2)
		if (r3.n==r4.n)and(r3.d==r4.d)
			iguales=true
		else
			iguales=false
		end
		assert(iguales,"La division no se efectuo correctamente")
	end
	
	def test_existe_numerador_y_denominador
		r1=Fraccion.new(1,2)
		if (r1.n!=nil) or (r2.d!=nil) 
		    devolver=true
		else
			devolver=false
		end
		assert(devolver,"No existe un numerador o un denominador para el racional dado")
	end
end

