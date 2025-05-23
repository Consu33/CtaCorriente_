Feature: Pruebas Automatizadas de la Aplicación

  # 6.1 Ingreso de nombre de usuario con datos almacenados en BD
  Scenario: Ingreso de usuario con datos válidos
    Given que el usuario está en la página de login
    When ingresa el nombre de usuario "usuarioPrueba" y la contraseña "usu123"
    Then el sistema muestra la pantalla de perfil

  # 6.2 Ingreso de nombre de usuario y password con datos erróneos
  Scenario: Ingreso de datos erróneos en login
    Given que el usuario está en la página de login
    When ingresa el nombre de usuario "usuarioErroneo" y la contraseña "usuincorrecto"
    Then el sistema muestra un mensaje de error indicando datos inválidos

  # 6.3 Registro de hora médica veterinaria
  Scenario: Registro exitoso de hora médica veterinaria
    Given que el usuario está en la página de registro de hora médica veterinaria
    When completa el formulario con la siguiente información:
      | Campo              | Valor                      |
      | Nombre del paciente| "Blue"                 |
      | Fecha              | "2025-06-15"               |
      | Hora               | "14:00"                    |
      | Especialidad       | "Odontología Veterinaria"  |
    And envía el formulario de registro
    Then el sistema confirma el registro con el mensaje "Hora registrada exitosamente"