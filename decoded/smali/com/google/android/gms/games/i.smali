.class public final Lcom/google/android/gms/games/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/i;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/i;->b:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/i;->c:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/i;->d:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/i;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/i;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/i;->g:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/i;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/i;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/games/j;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/i;->a:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/j;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/i;->b:Z

    iget v0, p1, Lcom/google/android/gms/games/j;->c:I

    iput v0, p0, Lcom/google/android/gms/games/i;->c:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/j;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/i;->d:Z

    iget v0, p1, Lcom/google/android/gms/games/j;->e:I

    iput v0, p0, Lcom/google/android/gms/games/i;->e:I

    iget-object v0, p1, Lcom/google/android/gms/games/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/i;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/j;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/i;->g:Ljava/util/ArrayList;

    iget-boolean v0, p1, Lcom/google/android/gms/games/j;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/i;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/j;Lcom/google/android/gms/games/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/i;-><init>(Lcom/google/android/gms/games/j;)V

    return-void
.end method

.method public static b()Lcom/google/android/gms/games/j;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/j;-><init>(Lcom/google/android/gms/games/d;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v2, p0, Lcom/google/android/gms/games/i;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.games.key.showConnectingPopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/i;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.games.key.connectingPopupGravity"

    iget v2, p0, Lcom/google/android/gms/games/i;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "com.google.android.gms.games.key.retryingSignIn"

    iget-boolean v2, p0, Lcom/google/android/gms/games/i;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.games.key.sdkVariant"

    iget v2, p0, Lcom/google/android/gms/games/i;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "com.google.android.gms.games.key.forceResolveAccountKey"

    iget-object v2, p0, Lcom/google/android/gms/games/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gms.games.key.proxyApis"

    iget-object v2, p0, Lcom/google/android/gms/games/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v1, "com.google.android.gms.games.key.requireGooglePlus"

    iget-boolean v2, p0, Lcom/google/android/gms/games/i;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
