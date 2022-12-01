@echo off
cd "%~dp0..\.."
SET venv=venv\Scripts\activate.bat
if not exist %venv% (
    echo Virtual Python environment is probably not set.
    echo Run init_virtual_env.bat
    EXIT /b
)

@echo on
call .\%venv%
python HaasoscopeQt.py