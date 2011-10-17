demos.mobgene = {};
demos.mobgene.initWorld = function(world) {
    //demos.top.createBall(world, 30, 30);
}
demos.InitWorlds.push(demos.mobgene.initWorld);
demos.mobgene.createAtom = function(world, x, y, rad, fixed) {
    var ballSd = new b2CircleDef();
	if (!fixed) ballSd.density = 1.0;
	ballSd.radius = rad || 15;
	ballSd.restitution = 0.2;
	ballSd.userData = Math.floor(Math.random()* 1000);
	var ballBd = new b2BodyDef();
	ballBd.AddShape(ballSd);
	ballBd.position.Set(x,y);
    var body = world.CreateBody(ballBd);
    var atom = {};
    //atom.shape = ballSd;
    //atom.shape.atom = atom;
    
    //shape.n = Math.floor(Math.random()* 1000);
    
    return atom;
}