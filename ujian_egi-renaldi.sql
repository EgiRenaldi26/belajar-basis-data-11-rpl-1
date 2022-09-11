1.CREAT DATABASES ujian_egi;

2.CREATE TABLE tb_obat(
    -> kode_obat VARCHAR(25) primary KEY,
    -> nama_obat VARCHAR(50),
    -> jenis VARCHAR(50),
    -> satuan VARCHAR(50),
    -> stok INT(20),
    -> harga_beli INT(20),
    -> harga_jual INT(20);

3. INSERT INTO tb_obat VALUES(
    -> 'K001',
    -> 'Allerin 120 cc',
    -> 'Obat Terbatas',
    -> 'Botol',
    -> '50',
    -> '20000',
    -> '22000');

   INSERT INTO tb_obat VALUES(
    -> 'K002',
    -> 'Becombion 110 ml',
    -> 'Obat Bebas',
    -> 'Botol',
    -> '10',
    -> '15000',
    -> '16000');

   INSERT INTO tb_obat VALUES(
    -> 'K003',
    -> 'Becombion 60 ml',
    -> 'Obat Bebas',
    -> 'Botol',
    -> '5',
    -> '8000',
    -> '9000');
    
    INSERT INTO tb_obat VALUES(
    -> 'K004',
    -> 'Betadine Vag Plus',
    -> 'Obat Bebas',
    -> 'Botol',
    -> '12',
    -> '12000',
    -> '13000');

    INSERT INTO tb_obat VALUES(
    -> 'K005',
    -> 'Komik',
    -> 'Obat Bebas',
    -> 'Lembar',
    -> '50',
    -> '4500',
    -> '5000');

    INSERT INTO tb_obat VALUES(
    -> 'K006',
    -> 'Diazepam',
    -> 'Obat Keras',
    -> 'Tablet',
    -> '4',
    -> '55000',
    -> '60000');

    INSERT INTO tb_obat VALUES(
    -> 'K007',
    -> 'CTM',
    -> 'Obat Bebas',
    -> 'Tablet',
    -> '3',
    -> '70000',
    -> '75000');

    INSERT INTO tb_obat VALUES(
    -> 'K008',
    -> 'Amoxicillin',
    -> 'Obat Terbatas',
    -> 'Tablet',
    -> '74',
    -> '975',
    -> '1100');

    INSERT INTO tb_obat VALUES(
    -> 'K009',
    -> 'Antimo',
    -> 'Obat Bebas',
    -> 'Tablet',
    -> '2',
    -> '5100',
    -> '6000');

    INSERT INTO tb_obat VALUES(
    -> 'K0010',
    -> 'Parasetamol',
    -> 'Obat Bebas',
    -> 'Strip',
    -> '100',
    -> '3000',
    -> '4000');

4.SELECT*FROM tb_obat;

5.SELECT*FROM `obat` WHERE obat ="terbatas";

6.WHERE nilai BEETWEN