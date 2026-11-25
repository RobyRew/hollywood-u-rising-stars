.class public final Lcom/google/android/gms/plus/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/i",
            "<",
            "Lcom/google/android/gms/plus/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<",
            "Lcom/google/android/gms/plus/internal/h;",
            "Lcom/google/android/gms/plus/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/plus/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/common/api/Scope;

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/plus/b;

.field public static final g:Lcom/google/android/gms/plus/c;

.field public static final h:Lcom/google/android/gms/plus/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Lcom/google/android/gms/plus/j;

.field public static final j:Lcom/google/android/gms/plus/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/e;->a:Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/plus/f;

    invoke-direct {v0}, Lcom/google/android/gms/plus/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/e;->b:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "Plus.API"

    sget-object v2, Lcom/google/android/gms/plus/e;->b:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/plus/e;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/plus/e;->c:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/e;->d:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/e;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/b/qa;

    invoke-direct {v0}, Lcom/google/android/gms/b/qa;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/e;->f:Lcom/google/android/gms/plus/b;

    new-instance v0, Lcom/google/android/gms/b/qb;

    invoke-direct {v0}, Lcom/google/android/gms/b/qb;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/e;->g:Lcom/google/android/gms/plus/c;

    new-instance v0, Lcom/google/android/gms/b/px;

    invoke-direct {v0}, Lcom/google/android/gms/b/px;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/e;->h:Lcom/google/android/gms/plus/a;

    new-instance v0, Lcom/google/android/gms/b/pz;

    invoke-direct {v0}, Lcom/google/android/gms/b/pz;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/e;->i:Lcom/google/android/gms/plus/j;

    new-instance v0, Lcom/google/android/gms/b/py;

    invoke-direct {v0}, Lcom/google/android/gms/b/py;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/e;->j:Lcom/google/android/gms/plus/i;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/n;Z)Lcom/google/android/gms/plus/internal/h;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bl;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    const-string/jumbo v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bl;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/e;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    const-string/jumbo v1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bl;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/e;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/plus/e;->a:Lcom/google/android/gms/common/api/i;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/h;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
