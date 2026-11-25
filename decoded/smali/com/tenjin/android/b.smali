.class public Lcom/tenjin/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/tenjin/android/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0xa3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "AED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "AFN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ALL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "AMD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ANG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "AOA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ARS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "AUD"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "AWG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "AZN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "BAM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "BBD"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "BDT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "BGN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "BHD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "BIF"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "BMD"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "BND"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "BOB"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "BRL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "BSD"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "BTN"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "BWP"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "BYR"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "BZD"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "CAD"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "CDF"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "CHF"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "CLP"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CNY"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "COP"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "CRC"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "CUC"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "CUP"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "CVE"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "CZK"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "DJF"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "DKK"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "DOP"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "DZD"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "EGP"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "ERN"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "ETB"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "EUR"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "FJD"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "FKP"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "GBP"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "GEL"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "GGP"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "GHS"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "GIP"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "GMD"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "GNF"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "GTQ"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "GYD"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "HKD"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "HNL"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "HRK"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "HTG"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "HUF"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "IDR"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "ILS"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "IMP"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "INR"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "IQD"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "IRR"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "ISK"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "JEP"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "JMD"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "JOD"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "JPY"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "KES"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "KGS"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "KHR"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "KMF"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "KPW"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "KRW"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "KWD"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "KYD"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "KZT"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "LAK"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "LBP"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "LKR"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "LRD"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "LSL"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "LTL"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "LYD"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "MAD"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "MDL"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "MGA"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "MKD"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "MMK"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "MNT"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "MOP"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "MRO"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "MUR"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "MVR"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "MWK"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "MXN"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "MYR"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "MZN"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "NAD"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "NGN"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "NIO"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "NOK"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "NPR"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "NZD"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "OMR"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "PAB"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "PEN"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "PGK"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "PHP"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "PKR"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "PLN"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "PYG"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "QAR"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "RON"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "RSD"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "RUB"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "RWF"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "SAR"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "SBD"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "SCR"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "SDG"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "SEK"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "SGD"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "SHP"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "SLL"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "SOS"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "SPL"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "SRD"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "STD"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "SVC"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "SYP"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "SZL"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "THB"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "TJS"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "TMT"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "TND"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "TOP"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "TRY"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "TTD"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "TVD"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "TWD"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "TZS"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "UAH"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "UGX"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "USD"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "UYU"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "UZS"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "VEF"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "VND"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "VUV"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "WST"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "XAF"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "XCD"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "XDR"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "XOF"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "XPF"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "YER"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "ZAR"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "ZMW"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "ZWD"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tenjin/android/b;->f:[Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/tenjin/android/b;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tenjin/android/b;->g:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "https://track.tenjin.io/v0/event"

    iput-object v0, p0, Lcom/tenjin/android/b;->c:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "https://track.tenjin.io/v0/purchase"

    iput-object v0, p0, Lcom/tenjin/android/b;->d:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "1.4.2"

    iput-object v0, p0, Lcom/tenjin/android/b;->e:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/tenjin/android/b;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/tenjin/android/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/tenjin/android/b;
    .locals 1

    .prologue
    .line 46
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_1
    sget-object v0, Lcom/tenjin/android/b;->h:Lcom/tenjin/android/b;

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Lcom/tenjin/android/b;

    invoke-direct {v0, p0, p1}, Lcom/tenjin/android/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tenjin/android/b;->h:Lcom/tenjin/android/b;

    .line 56
    :cond_2
    sget-object v0, Lcom/tenjin/android/b;->h:Lcom/tenjin/android/b;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tenjin/android/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tenjin/android/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    const-string/jumbo v2, "tenjinInstallPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    const-string/jumbo v2, "tenjinInstallReferrer"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-direct {p0}, Lcom/tenjin/android/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-direct {p0}, Lcom/tenjin/android/b;->e()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-direct {p0}, Lcom/tenjin/android/b;->c()Ljava/lang/String;

    move-result-object v5

    .line 79
    iget-object v6, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-direct {p0}, Lcom/tenjin/android/b;->d()Ljava/lang/String;

    move-result-object v7

    .line 82
    const-string/jumbo v8, ""

    if-eq v4, v8, :cond_1

    .line 84
    const-string/jumbo v8, "bundle_id"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v6, "advertising_id"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v4, "platform"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v4, "limit_ad_tracking"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v3, "os_version"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v3, "app_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v3, "sdk_version"

    iget-object v4, p0, Lcom/tenjin/android/b;->e:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v3, "device"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-eqz v2, :cond_0

    .line 93
    const-string/jumbo v3, "referrer"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    :cond_0
    const-string/jumbo v1, "country"

    iget-object v2, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_1
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    const-string/jumbo v0, "^-?[0-9]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "Amazon"

    .line 115
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "amazon"

    .line 121
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const-string/jumbo v0, "android"

    goto :goto_0
.end method

.method static synthetic c(Lcom/tenjin/android/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tenjin/android/b;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method static synthetic d(Lcom/tenjin/android/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tenjin/android/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 132
    const-string/jumbo v0, ""

    .line 133
    invoke-direct {p0}, Lcom/tenjin/android/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string/jumbo v2, "amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    const-string/jumbo v2, "limit_ad_tracking"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 139
    if-nez v2, :cond_1

    .line 140
    const-string/jumbo v0, "advertising_id"

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 150
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 154
    :catch_1
    move-exception v1

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/common/c;->printStackTrace()V

    goto :goto_0

    .line 156
    :catch_2
    move-exception v1

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/common/d;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tenjin/android/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tenjin/android/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const-string/jumbo v0, ""

    .line 167
    invoke-direct {p0}, Lcom/tenjin/android/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    const-string/jumbo v1, "limit_ad_tracking"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, "0"

    .line 186
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0

    .line 179
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "1"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tenjin/android/c;

    invoke-direct {v1, p0}, Lcom/tenjin/android/c;-><init>(Lcom/tenjin/android/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 310
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tenjin/android/e;

    invoke-direct {v1, p0, p1}, Lcom/tenjin/android/e;-><init>(Lcom/tenjin/android/b;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string/jumbo v0, "TenjinSDK"

    const-string/jumbo v1, "Tenjin WARNING: Your event was not sent bacause the eventName was not valid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 274
    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tenjin/android/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/tenjin/android/d;-><init>(Lcom/tenjin/android/b;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string/jumbo v0, "TenjinSDK"

    const-string/jumbo v1, "Tenjin WARNING: Your event was not sent because the eventValue or eventName is not valid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/tenjin/android/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/tenjin/android/b;->a(Ljava/lang/String;I)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string/jumbo v0, "TenjinSDK"

    const-string/jumbo v1, "Tenjin WARNING: Your event was not sent because the eventValue is not an integer or your eventName is not valid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 8

    .prologue
    .line 352
    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tenjin/android/b;->g:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 361
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tenjin/android/f;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/tenjin/android/f;-><init>(Lcom/tenjin/android/b;Ljava/lang/String;Ljava/lang/String;ID)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 383
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string/jumbo v0, "TenjinSDK"

    const-string/jumbo v1, "Tenjin WARNING: Your purchase was not sent because you didn\'t have valid parameters."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
