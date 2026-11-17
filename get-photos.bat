@echo off
rem Downloads the monument photos (Wikimedia Commons, free licences) into the photos folder.
rem Already downloaded photos are skipped; it waits between downloads because Wikimedia limits fast requests.
setlocal
cd /d "%~dp0"
if not exist photos mkdir photos
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Bada_Darwaza_of_Purana_Qila_in_Delhi.JPG/500px-Bada_Darwaza_of_Purana_Qila_in_Delhi.JPG"
call :get "pq-bara-gate.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Bara_Darwaza%%2C_Purana_Qila%%2C_Delhi%%2C_India_%%282018%%29.jpg/500px-Bara_Darwaza%%2C_Purana_Qila%%2C_Delhi%%2C_India_%%282018%%29.jpg"
call :get "pq-entry.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Humayun_Gate_at_Purana_Qila_Delhi.JPG/500px-Humayun_Gate_at_Purana_Qila_Delhi.JPG"
call :get "pq-humayun.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Talaqi_Darwaza%%2C_Purana_Qila.jpg/500px-Talaqi_Darwaza%%2C_Purana_Qila.jpg"
call :get "pq-talaqi.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Qila-i-kuhna_mosque.jpg/500px-Qila-i-kuhna_mosque.jpg"
call :get "pq-mosque.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Sher_Mandal%%2C_Purana_Qila_%%2801%%29.jpg/500px-Sher_Mandal%%2C_Purana_Qila_%%2801%%29.jpg"
call :get "pq-shermandal.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Baoli_inside_Purana_Qila_with_Qila-i-Kohna_in_background.jpg/500px-Baoli_inside_Purana_Qila_with_Qila-i-Kohna_in_background.jpg"
call :get "pq-baoli.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Entrance_of_the_Archaeological_Museum%%2C_Purana_Qila_%%2801%%29.jpg/500px-Entrance_of_the_Archaeological_Museum%%2C_Purana_Qila_%%2801%%29.jpg"
call :get "pq-museum.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Artefacts_-_ASI_Excavation_-_Old_Fort_Complex_-_New_Delhi_2014-05-13_2899-2901_Archive.TIF/lossy-page1-500px-Artefacts_-_ASI_Excavation_-_Old_Fort_Complex_-_New_Delhi_2014-05-13_2899-2901_Archive.TIF.jpg"
call :get "pq-excavation.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Purana_Quila_%%28The_Old_Fort%%29.jpg/500px-Purana_Quila_%%28The_Old_Fort%%29.jpg"
call :get "pq-lake.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Lahori_Gate_%%28Red_Fort%%29%%2C_Delhi%%2C_India_%%282017%%29.jpg/500px-Lahori_Gate_%%28Red_Fort%%29%%2C_Delhi%%2C_India_%%282017%%29.jpg"
call :get "rf-lahori.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Lahori_Gate_Red_Fort_New_Delhi.jpg/500px-Lahori_Gate_Red_Fort_New_Delhi.jpg"
call :get "rf-entry.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Chhatta_Chowk_market_inside_the_Red_fort_01.jpg/500px-Chhatta_Chowk_market_inside_the_Red_fort_01.jpg"
call :get "rf-chhatta.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/20191203_Naubat_Khana%%2C_Red_Fort%%2C_Delhi_0453_6340_DxO.jpg/500px-20191203_Naubat_Khana%%2C_Red_Fort%%2C_Delhi_0453_6340_DxO.jpg"
call :get "rf-naubat.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Diwan-i-Aam%%2C_Red_Fort%%2C_Delhi.JPG/500px-Diwan-i-Aam%%2C_Red_Fort%%2C_Delhi.JPG"
call :get "rf-diwaniam.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Muntaz_Mahal_Red_Fort_Delhi_India_-_panoramio.jpg/500px-Muntaz_Mahal_Red_Fort_Delhi_India_-_panoramio.jpg"
call :get "rf-mumtaz.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Rang_Mahal%%2C_Red_Fort%%2C_Delhi_02.JPG/500px-Rang_Mahal%%2C_Red_Fort%%2C_Delhi_02.JPG"
call :get "rf-rang.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Delhi%%2C_India%%2C_Khas_Mahal%%2C_Red_Fort.jpg/500px-Delhi%%2C_India%%2C_Khas_Mahal%%2C_Red_Fort.jpg"
call :get "rf-khas.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/20191203_Diwan-i-Khas%%2C_Red_Fort%%2C_Delhi_0503_6358_DxO.jpg/500px-20191203_Diwan-i-Khas%%2C_Red_Fort%%2C_Delhi_0503_6358_DxO.jpg"
call :get "rf-diwanikhas.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Hammam_khana_in_Red_Fort%%2C_Delhi_02.jpg/500px-Hammam_khana_in_Red_Fort%%2C_Delhi_02.jpg"
call :get "rf-hammam.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/20191203_Moti_Masjid%%2C_Red_Fort%%2C_Delhi_0502_6354_DxO.jpg/500px-20191203_Moti_Masjid%%2C_Red_Fort%%2C_Delhi_0502_6354_DxO.jpg"
call :get "rf-moti.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Sawan_Pavilion_-_North_Facade_-_Hayat-Bakhsh-Bag_-_Red_Fort_-_Delhi_2014-05-13_3355.JPG/500px-Sawan_Pavilion_-_North_Facade_-_Hayat-Bakhsh-Bag_-_Red_Fort_-_Delhi_2014-05-13_3355.JPG"
call :get "rf-hayat.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/20191203_Zafar_Mahal%%2C_Red_Fort%%2C_Delhi_0518_6389_DxO.jpg/500px-20191203_Zafar_Mahal%%2C_Red_Fort%%2C_Delhi_0518_6389_DxO.jpg"
call :get "rf-zafar.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Shah_Burj_Pavilion_-_Southern_View_-_Red_Fort_-_Delhi_2014-05-13_3382.JPG/500px-Shah_Burj_Pavilion_-_Southern_View_-_Red_Fort_-_Delhi_2014-05-13_3382.JPG"
call :get "rf-shahburj.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Red_Fort_Baoli.jpg/500px-Red_Fort_Baoli.jpg"
call :get "rf-baoli.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/PXL_20231129_094544810Archaeological_Museum_Red_Fort_Lal_Qila%%2C_Old_Delhi%%2C_Delhi%%2C_110006_07.jpg/500px-PXL_20231129_094544810Archaeological_Museum_Red_Fort_Lal_Qila%%2C_Old_Delhi%%2C_Delhi%%2C_110006_07.jpg"
call :get "rf-kranti.jpg"
set "U=https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Delhi_Gate%%2C_Red_Fort%%2C_Delhi.jpg/500px-Delhi_Gate%%2C_Red_Fort%%2C_Delhi.jpg"
call :get "rf-delhi.jpg"
echo.
echo Done. Photos saved in %~dp0photos - tell Claude they are ready.
pause
exit /b

:get
set "F=photos\%~1"
if exist "%F%" for %%A in ("%F%") do if %%~zA GTR 10000 (echo ok      %~1 & exit /b)
echo getting %~1
curl -s -L --fail --retry 4 --retry-delay 15 -A "BiennaleFortMaps/1.0 (offline visitor map; contact subene-k on GitHub)" -o "%F%" "%U%"
if exist "%F%" for %%A in ("%F%") do if %%~zA LSS 10000 del "%F%"
if not exist "%F%" echo FAILED  %~1 - run this file again later
timeout /t 5 /nobreak >nul
exit /b
