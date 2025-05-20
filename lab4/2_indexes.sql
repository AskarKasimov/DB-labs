-- 1
CREATE INDEX idx_ведомости_тв_ид ON Н_ВЕДОМОСТИ USING btree (ТВ_ИД);

CREATE INDEX idx_ведомости_члвк_ид ON Н_ВЕДОМОСТИ USING btree (ЧЛВК_ИД);

-- 2
CREATE INDEX idx_люди_имя ON Н_ЛЮДИ USING hash (ИМЯ);

CREATE INDEX idx_ведомости_члвк_ид ON Н_ВЕДОМОСТИ USING btree (ЧЛВК_ИД);

CREATE INDEX idx_сессии_члвк_ид ON Н_СЕССИЯ USING btree (ЧЛВК_ИД);