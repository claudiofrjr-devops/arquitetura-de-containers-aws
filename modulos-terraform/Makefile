# Função para qual módulo deve ser executado
define ask_module
	@read -p "Qual módulo você quer executar? (ex: network_aws, ecs_aws): " module; \
	echo $$module > .module_selected; \
	MODULE=$$module; \
	$(MAKE) $1 MODULE=$$MODULE
endef

# Alvo para carregar o módulo selecionado em uma variável
get_module:
	$(eval MODULE := $(shell cat .module_selected))

# Alvos de inicialização para cada ambiente
init-dev:
	$(call ask_module,init-dev-exec)

init-dev-exec: get_module
	terraform -chdir=./$(MODULE) init

init-stage:
	$(call ask_module,init-stage-exec)

init-stage-exec: get_module
	terraform -chdir=./$(MODULE) init

init-prd:
	$(call ask_module,init-prd-exec)

init-prd-exec: get_module
	terraform -chdir=./$(MODULE) init

# Alvos de planejamento para cada ambiente
plan-dev:
	$(call ask_module,plan-dev-exec)

plan-dev-exec: get_module
	terraform -chdir=./$(MODULE) plan -var-file=environment/dev/terraform.tfvars

plan-stage:
	$(call ask_module,plan-stage-exec)

plan-stage-exec: get_module
	terraform -chdir=./$(MODULE) plan -var-file=environment/stage/terraform.tfvars

plan-prd:
	$(call ask_module,plan-prd-exec)

plan-prd-exec: get_module
	terraform -chdir=./$(MODULE) plan -var-file=environment/prd/terraform.tfvars

# Alvos de aplicação para cada ambiente
apply-dev:
	$(call ask_module,apply-dev-exec)

apply-dev-exec: get_module
	terraform -chdir=./$(MODULE) apply -var-file=environment/dev/terraform.tfvars

apply-stage:
	$(call ask_module,apply-stage-exec)

apply-stage-exec: get_module
	terraform -chdir=./$(MODULE) apply -var-file=environment/stage/terraform.tfvars

apply-prd:
	$(call ask_module,apply-prd-exec)

apply-prd-exec: get_module
	terraform -chdir=./$(MODULE) apply -var-file=environment/prd/terraform.tfvars

# Alvos para destruir os recursos de cada ambiente
destroy-dev:
	$(call ask_module,destroy-dev-exec)

destroy-dev-exec: get_module
	terraform -chdir=./$(MODULE) destroy -var-file=environment/dev/terraform.tfvars

destroy-stage:
	$(call ask_module,destroy-stage-exec)

destroy-stage-exec: get_module
	terraform -chdir=./$(MODULE) destroy -var-file=environment/stage/terraform.tfvars

destroy-prd:
	$(call ask_module,destroy-prd-exec)

destroy-prd-exec: get_module
	terraform -chdir=./$(MODULE) destroy -var-file=environment/prd/terraform.tfvars

# Limpar o arquivo temporário .module_selected
clean:
	@rm -f .module_selected
