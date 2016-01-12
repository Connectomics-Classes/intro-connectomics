% Get vesicle data

% setup OCP

oo = OCP();
oo.setImageToken('kasthuri11cc');
oo.setImageChannel('image');

oo.setAnnoToken('kasthuri2015_ramon_v1');
oo.setAnnoChannel('vesicle');

q = OCPQuery;
q.setType(eOCPQueryType.imageDense);
%q.setCutoutArgs([2776, 4776],[7000,9000],[1004,1154],1);
q.setCutoutArgs([2776, 3776],[7000,8000],[1004,1079],1);
q.validate

tic, im = oo.query(q); toc

q.setType(eOCPQueryType.annoDense);
tic, anno = oo.query(q); toc
