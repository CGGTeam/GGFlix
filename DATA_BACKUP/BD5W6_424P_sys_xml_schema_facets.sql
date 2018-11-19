CREATE TABLE sys.xml_schema_facets
(
    xml_component_id int NOT NULL,
    facet_id int NOT NULL,
    kind char(2) NOT NULL,
    kind_desc nvarchar(60),
    is_fixed bit NOT NULL,
    value nvarchar(4000)
);
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (15, 1, 'WS', 'WHITESPACE_NORMALIZATION', 0, 'preserve');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (16, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (17, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (18, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (19, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (20, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (21, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (22, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (23, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (24, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (25, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (26, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (27, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (28, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (29, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (30, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (31, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (32, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (33, 1, 'WS', 'WHITESPACE_NORMALIZATION', 1, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (100, 1, 'WS', 'WHITESPACE_NORMALIZATION', 0, 'replace');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (101, 1, 'WS', 'WHITESPACE_NORMALIZATION', 0, 'collapse');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (102, 1, 'PT', 'PATTERN', 0, '[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (103, 1, 'PT', 'PATTERN', 0, '\i\c*');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (104, 1, 'PT', 'PATTERN', 0, '[\i-[:]][\c-[:]]*');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (108, 1, 'PT', 'PATTERN', 0, '\c+');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (109, 1, 'DF', 'FRACTION_DIGITS', 1, '0');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (110, 1, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '0');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (111, 1, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '-1');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (112, 1, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '-9223372036854775808');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (112, 2, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '9223372036854775807');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (113, 1, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '-2147483648');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (113, 2, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '2147483647');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (114, 1, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '-32768');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (114, 2, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '32767');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (115, 1, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '-128');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (115, 2, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '127');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (116, 1, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '0');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (117, 1, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '18446744073709551615');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (118, 1, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '4294967295');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (119, 1, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '65535');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (120, 1, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '255');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (121, 1, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '1');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (200, 1, 'LN', 'MINIMUM_LENGTH', 0, '1');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (201, 1, 'LN', 'MINIMUM_LENGTH', 0, '1');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (202, 1, 'LN', 'MINIMUM_LENGTH', 0, '1');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (263, 1, 'EU', 'ENUMERATION', 0, 'default');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (263, 2, 'EU', 'ENUMERATION', 0, 'preserve');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 1, 'EU', 'ENUMERATION', 0, 'BigInt');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 2, 'EU', 'ENUMERATION', 0, 'Binary');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 3, 'EU', 'ENUMERATION', 0, 'Bit');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 4, 'EU', 'ENUMERATION', 0, 'Char');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 5, 'EU', 'ENUMERATION', 0, 'DateTime');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 6, 'EU', 'ENUMERATION', 0, 'Decimal');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 7, 'EU', 'ENUMERATION', 0, 'Float');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 8, 'EU', 'ENUMERATION', 0, 'Image');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 9, 'EU', 'ENUMERATION', 0, 'Int');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 10, 'EU', 'ENUMERATION', 0, 'Money');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 11, 'EU', 'ENUMERATION', 0, 'NChar');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 12, 'EU', 'ENUMERATION', 0, 'NText');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 13, 'EU', 'ENUMERATION', 0, 'NVarChar');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 14, 'EU', 'ENUMERATION', 0, 'Real');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 15, 'EU', 'ENUMERATION', 0, 'SmallDateTime');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 16, 'EU', 'ENUMERATION', 0, 'SmallInt');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 17, 'EU', 'ENUMERATION', 0, 'SmallMoney');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 18, 'EU', 'ENUMERATION', 0, 'Variant');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 19, 'EU', 'ENUMERATION', 0, 'Text');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 20, 'EU', 'ENUMERATION', 0, 'Timestamp');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 21, 'EU', 'ENUMERATION', 0, 'TinyInt');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 22, 'EU', 'ENUMERATION', 0, 'Udt');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 23, 'EU', 'ENUMERATION', 0, 'UniqueIdentifier');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 24, 'EU', 'ENUMERATION', 0, 'VarBinary');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 25, 'EU', 'ENUMERATION', 0, 'VarChar');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 26, 'EU', 'ENUMERATION', 0, 'Xml');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 27, 'EU', 'ENUMERATION', 0, 'Date');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 28, 'EU', 'ENUMERATION', 0, 'Time');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 29, 'EU', 'ENUMERATION', 0, 'DateTime2');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 30, 'EU', 'ENUMERATION', 0, 'DateTimeOffset');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (300, 31, 'EU', 'ENUMERATION', 0, 'HierarchyId');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 1, 'EU', 'ENUMERATION', 0, 'Default');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 2, 'EU', 'ENUMERATION', 0, 'None');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 3, 'EU', 'ENUMERATION', 0, 'IgnoreCase');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 4, 'EU', 'ENUMERATION', 0, 'IgnoreNonSpace');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 5, 'EU', 'ENUMERATION', 0, 'IgnoreKanaType');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 6, 'EU', 'ENUMERATION', 0, 'IgnoreWidth');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 7, 'EU', 'ENUMERATION', 0, 'BinarySort');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (301, 8, 'EU', 'ENUMERATION', 0, 'BinarySort2');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (312, 1, 'LX', 'MAXIMUM_LENGTH', 0, '8');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (324, 1, 'PT', 'PATTERN', 0, '((000[1-9])|(00[1-9][0-9])|(0[1-9][0-9]{2})|([1-9][0-9]{3}))-((0[1-9])|(1[012]))-((0[1-9])|([12][0-9])|(3[01]))T(([01][0-9])|(2[0-3]))(:[0-5][0-9]){2}(\.[0-9]{2}[037])?');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (324, 2, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '9999-12-31T23:59:59.997');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (324, 3, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '1753-01-01T00:00:00.000');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (325, 1, 'PT', 'PATTERN', 0, '((000[1-9])|(00[1-9][0-9])|(0[1-9][0-9]{2})|([1-9][0-9]{3}))-((0[1-9])|(1[012]))-((0[1-9])|([12][0-9])|(3[01]))T(([01][0-9])|(2[0-3]))(:[0-5][0-9])(:00)');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (325, 2, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '2079-06-06T23:59:00');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (325, 3, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '1900-01-01T00:00:00');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (326, 1, 'DT', 'TOTAL_DIGITS', 0, '19');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (326, 2, 'DF', 'FRACTION_DIGITS', 0, '4');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (326, 3, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '922337203685477.5807');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (326, 4, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '-922337203685477.5808');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (327, 1, 'DT', 'TOTAL_DIGITS', 0, '10');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (327, 2, 'DF', 'FRACTION_DIGITS', 0, '4');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (327, 3, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '214748.3647');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (327, 4, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '-214748.3648');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (328, 1, 'PT', 'PATTERN', 0, '([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})|(\{[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\})');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (330, 1, 'PT', 'PATTERN', 0, '((000[1-9])|(00[1-9][0-9])|(0[1-9][0-9]{2})|([1-9][0-9]{3}))-((0[1-9])|(1[012]))-((0[1-9])|([12][0-9])|(3[01]))');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (330, 2, 'IX', 'MAXIMUM_INCLUSIVE_VALUE', 0, '9999-12-31');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (330, 3, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '0001-01-01');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (331, 1, 'PT', 'PATTERN', 0, '(([01][0-9])|(2[0-3]))(:[0-5][0-9]){2}(\.[0-9]+)?');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (331, 2, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '00:00:00');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (332, 1, 'PT', 'PATTERN', 0, '((000[1-9])|(00[1-9][0-9])|(0[1-9][0-9]{2})|([1-9][0-9]{3}))-((0[1-9])|(1[012]))-((0[1-9])|([12][0-9])|(3[01]))T(([01][0-9])|(2[0-3]))(:[0-5][0-9]){2}(\.[0-9]+)?');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (332, 2, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '0001-01-01T00:00:00');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (333, 1, 'PT', 'PATTERN', 0, '((000[1-9])|(00[1-9][0-9])|(0[1-9][0-9]{2})|([1-9][0-9]{3}))-((0[1-9])|(1[012]))-((0[1-9])|([12][0-9])|(3[01]))T(([01][0-9])|(2[0-3]))(:[0-5][0-9]){2}(\.[0-9]+)?(([+-]((((0[0-9])|(1[0-3]))(:[0-5][0-9]))|14:00))|Z)');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (333, 2, 'IN', 'MINIMUM_INCLUSIVE_VALUE', 0, '0001-01-01T00:00:00Z');
INSERT INTO sys.xml_schema_facets (xml_component_id, facet_id, kind, kind_desc, is_fixed, value) VALUES (334, 1, 'PT', 'PATTERN', 0, '/((-?[0-9]+)(\.-?[0-9]+)*/)*');