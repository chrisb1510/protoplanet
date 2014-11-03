###-> Create a machine object
#    with a property motors = 4
#__###
machine =
	motors:4

robot = 
	friendly:true

robby = {}	
#-> Make machine the prototype of robot

robot.__proto__ = machine
#// -> Make robot the prototype of robby

robby.__proto__ = robot

claim robby.motors,4
claim robby.friendly,true


# ------------------------------------------------

# Common JS exports for verification, don't modify
module.exports = {
	machine: machine
	robot:   robot
	robby:   robby
}