% Get vesicle data

% setup OCP

oo = OCP();
oo.setImageToken('kasthuri11cc');
oo.setImageChannel('image');

oo.setAnnoToken('kat11vesicles');
oo.setAnnoChannel('annotation');

q = OCPQuery;
q.setType(eOCPQueryType.imageDense);
%q.setCutoutArgs([2776, 4776],[7000,9000],[1004,1154],1);
q.setCutoutArgs([4776, 5776],[8500,9500],[1150,1200],1);
q.validate

tic, im = oo.query(q); toc

q.setType(eOCPQueryType.annoDense);
tic, anno = oo.query(q); toc

h = image(im); h.associate(anno)