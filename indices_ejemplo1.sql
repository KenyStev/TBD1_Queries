select s.nombre_sucursal
from sucursal S
where  S.ciudad_sucursal = 'Arganzuela';

drop index IDX_SUCURSAL;
CREATE INDEX IDX_SUCURSAL ON SUCURSAL(ciudad_sucursal);