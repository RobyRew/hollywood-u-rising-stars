.class public final Lcom/google/android/gms/b/kg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/i",
            "<",
            "Lcom/google/android/gms/b/ko;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/common/api/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/b/ki;

.field private static final d:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<",
            "Lcom/google/android/gms/b/ko;",
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

    sput-object v0, Lcom/google/android/gms/b/kg;->a:Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/b/kh;

    invoke-direct {v0}, Lcom/google/android/gms/b/kh;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/kg;->d:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "Common.API"

    sget-object v2, Lcom/google/android/gms/b/kg;->d:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/b/kg;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/b/kg;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/b/kj;

    invoke-direct {v0}, Lcom/google/android/gms/b/kj;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/kg;->c:Lcom/google/android/gms/b/ki;

    return-void
.end method
