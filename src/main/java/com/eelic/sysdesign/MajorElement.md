```puml
Abstract class Men
class Supplier extends Men
class Producer extends Men
class Customer extends Men

interface MenImpl
interface SupplierImpl extends MenImpl
interface ProducerImpl extends MenImpl
interface CustomerImpl extends MenImpl
```

```puml
Abstract class Machine
class BuyTool extends Machine
class MakeTool extends Machine
class SaleTool extends Machine

interface MachineImpl
interface BuyImpl extends MachineImpl
interface MakeImpl extends MachineImpl
interface SaleImpl extends MachineImpl
```

```puml
Abstract class Material 
class RawGoods extends Material{
1农副产品/Agricultural
2金属产品/Metal
3化工产品/Chemical
RawMaterial(1:2:3)
SetHScode()
}
note left of RawGoods::"RawMaterial(1:2:3)"
大宗商品分类/
Commodity 
classification
end note


class SemiGoods extends Material
class Products extends Material
```
```puml
class SPU extends Material
note "有问题,待修改/todo Edit" as N1
class SPUi extends SPU
class SPUs extends SPU
class SPUo extends SPU

class SKU extends SPU

class SKUi extends SKU, SPUi
class SKUs extends SKU, SPUs
class SKUo extends SKU, SPUo
 
```
```puml
Abstract class Environment
class BuyEnv extends Environment
class MakeEnv extends Environment
class SaleEnv extends Environment
```

```puml
Abstract class Env
class BuyEnv extends Env
class MakeEnv extends Env
class SaleEnv extends Env

Abstract class Meth
class BuyMeth extends Meth
class MakeMeth extends Meth
class SaleMeth extends Meth
```

