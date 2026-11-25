.class public Lcom/google/android/gms/location/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/common/api/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/location/d;

.field public static final c:Lcom/google/android/gms/location/g;

.field public static final d:Lcom/google/android/gms/location/q;

.field private static final e:Lcom/google/android/gms/common/api/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/i",
            "<",
            "Lcom/google/android/gms/location/internal/y;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<",
            "Lcom/google/android/gms/location/internal/y;",
            "Lcom/google/android/gms/common/api/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/m;->e:Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/location/n;

    invoke-direct {v0}, Lcom/google/android/gms/location/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/m;->f:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "LocationServices.API"

    sget-object v2, Lcom/google/android/gms/location/m;->f:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/location/m;->e:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/location/m;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/location/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/m;->b:Lcom/google/android/gms/location/d;

    new-instance v0, Lcom/google/android/gms/location/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/m;->c:Lcom/google/android/gms/location/g;

    new-instance v0, Lcom/google/android/gms/location/internal/af;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/m;->d:Lcom/google/android/gms/location/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/i;
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/m;->e:Lcom/google/android/gms/common/api/i;

    return-object v0
.end method
