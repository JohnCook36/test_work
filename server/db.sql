PGDMP         ,                {            crypto    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    crypto    DATABASE     z   CREATE DATABASE crypto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE crypto;
                postgres    false            �            1259    24578    cripto    TABLE     �   CREATE TABLE public.cripto (
    id integer NOT NULL,
    code character varying(255),
    percentage character varying(255)
);
    DROP TABLE public.cripto;
       public         heap    postgres    false            �            1259    24577    cripto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cripto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cripto_id_seq;
       public          postgres    false    215            �           0    0    cripto_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cripto_id_seq OWNED BY public.cripto.id;
          public          postgres    false    214            e           2604    24581 	   cripto id    DEFAULT     f   ALTER TABLE ONLY public.cripto ALTER COLUMN id SET DEFAULT nextval('public.cripto_id_seq'::regclass);
 8   ALTER TABLE public.cripto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    24578    cripto 
   TABLE DATA           6   COPY public.cripto (id, code, percentage) FROM stdin;
    public          postgres    false    215   P
       �           0    0    cripto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cripto_id_seq', 305, true);
          public          postgres    false    214            g           2606    24585    cripto cripto_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cripto
    ADD CONSTRAINT cripto_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cripto DROP CONSTRAINT cripto_pkey;
       public            postgres    false    215            �   �  x�mU�ncI;+S(�ҿ��Kg�/�I����\f 6]%���Ĝ��Y���mR��"�z?P�4e6���
$�Cx����2��H�vw���&�EF����yK�<�C���u�8�^ܨ{����㾉�@����pik�i�cJ��}�>��{ՙ��<�D)W:}����-♎j�Հ��?���2�jq� �X,���>�U��\FX2�@A�۞:������y_��u��$Q ��z��"X��ވ[�QBJJ/�M���y����a��"1i��9�p�_mC���Z!�^1�oHGC��~�/�P�^O�$5+���$��4���~�iwx��
��kV�h^�v��2�-QL+b�BI��7E��cU�s�r*�v��$��w���X�G��xD� �4�:� �Ǖ�Q5s81� B2�oA�K&$��D
��{J7���@) J���y!\zA�9����F�rNdV�'���g̖d:��J����R�A�X$��ے��|#���fc�2��+:^�r���uc�!���������XC�^k��x�Eh���9R��'EF��0
!̠VB�_g���07�-c4(���+�8HO���W�[��τ�ǰ�*d�� 7 �������d��t���xD���5PH��p!H6�L�zv]�]�4@Ma��aH5]N  +�4Xk`���'][�d����kꐅ0�6�c��s���-H���$]P-�D���_yN���b J����'50PaH���N��~����R�-�v��i\ a9a���$=6��V�R[�Y��:E?_�0�XAxW1	��g\�Pb��6ĸ������l�fb�( ,H��@o���`?n��s��ŉ!�)�9�sVKX�h�q���:��6@9������ �Q'     