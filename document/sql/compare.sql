DROP TABLE IF EXISTS COMPARE;
DROP SEQUENCE IF EXISTS COMP_SEQUENCE;
DROP INDEX IF EXISTS VERSION_ID_UNIQ_INDEX;

CREATE TABLE IF NOT EXISTS COMPARE
(
	ID BIGINT NOT NULL PRIMARY KEY, 
	VERSION_ID BIGINT NOT NULL,
	COMT_ID_MAIN BIGINT NOT NULL,
	COMT_ID_CHECKED BIGINT NOT NULL,
	MAIN_ENVRMT BIGINT NOT NULL,
	CHECKED_ENVRMT BIGINT NOT NULL,
	SAME_ID VARCHAR2,
	IS_CHECK INT,
	IS_PASS INT,
	FEATURES VARCHAR2,
	GMT_CREATE TIMESTAMP NOT NULL
);

COMMENT ON COLUMN COMPARE.VERSION_ID IS '���еİ汾ID';
COMMENT ON COLUMN COMPARE.COMT_ID_MAIN IS '��׼����ȷ��http��Ϣ����Ӧ��ID';
COMMENT ON COLUMN COMPARE.MAIN_ENVRMT IS '��׼����ȷ�Ĳο�������0�����ϣ�1��beta��2��Ԥ����3���Ҷ�Ԥ����4��beta1��5��beta2��6���Ҷ�����';
COMMENT ON COLUMN COMPARE.COMT_ID_CHECKED IS '��У���http��Ϣ����Ӧ��ID';
COMMENT ON COLUMN COMPARE.CHECKED_ENVRMT IS '��У��Ļ�����0�����ϣ�1��beta��2��Ԥ����3���Ҷ�Ԥ����4��beta1��5��beta2��6���Ҷ�����';
COMMENT ON COLUMN COMPARE.SAME_ID IS '��ͬ�����󡢱���ID����Ψһ������url';
COMMENT ON COLUMN COMPARE.IS_CHECK IS 'Ĭ��Ϊfalse�������������Ա���ɺ󣬸ı�ֵΪtrue';
COMMENT ON COLUMN COMPARE.FEATURES IS '��¼�����host��, k:v��ʽ��host:1����ʾ�ж���İ�';


CREATE SEQUENCE IF NOT EXISTS COMP_SEQUENCE START WITH 100 INCREMENT BY 1 CACHE 1;
COMMENT ON SEQUENCE COMP_SEQUENCE IS 'COMPARE��ŵ�����';