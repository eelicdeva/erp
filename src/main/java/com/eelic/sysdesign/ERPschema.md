```puml
note "ERP object diagram" as N1
package Money {
    object fund
}
package PLM {
    object material {

    + sku
    + method
    + measurement
    }     
    package output {
        object produce {
    + fundo
    + skuo
    + produce(meth,meas,env,men)
        }
    }
}
note bottom of PLM : PLM: product life management

package CRM {
    object men
}
note bottom of CRM : CRM: Customer Relationship Management
package FactoryBI {
    object environment
    object machine {
    }
}
note bottom of FactoryBI : BI: : Business Intelligence
fund --> machine
material --> machine
men --> machine
environment --> machine
machine --> produce
```
```puml
class men
class environment
class material
class fund
class sku
class measurement
class produce
class machine


```