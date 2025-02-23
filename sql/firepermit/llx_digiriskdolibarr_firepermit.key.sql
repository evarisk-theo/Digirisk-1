-- Copyright (C) 2021 EOXIA <dev@eoxia.com>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see https://www.gnu.org/licenses/.

ALTER TABLE llx_digiriskdolibarr_firepermit ADD INDEX idx_digiriskdolibarr_firepermit_rowid (rowid);
ALTER TABLE llx_digiriskdolibarr_firepermit ADD INDEX idx_digiriskdolibarr_firepermit_ref_ext (ref_ext);
ALTER TABLE llx_digiriskdolibarr_firepermit ADD CONSTRAINT llx_digiriskdolibarr_firepermit_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_digiriskdolibarr_firepermit ADD CONSTRAINT llx_digiriskdolibarr_firepermit_fk_project FOREIGN KEY (fk_project) REFERENCES llx_projet(rowid);
