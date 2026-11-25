.class public Lcom/google/android/gms/b/fe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/b/ff;

.field private d:Ljava/math/BigInteger;

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Landroid/content/Context;

.field private l:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private m:Lcom/google/android/gms/b/au;

.field private n:Z

.field private o:Lcom/google/android/gms/b/u;

.field private p:Lcom/google/android/gms/b/v;

.field private q:Lcom/google/android/gms/b/t;

.field private final r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/b/fa;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/fq;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/fe;->a:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/b/fe;->d:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/fe;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/fe;->f:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/b/fe;->g:Z

    iput-boolean v3, p0, Lcom/google/android/gms/b/fe;->h:Z

    iput v2, p0, Lcom/google/android/gms/b/fe;->i:I

    iput-boolean v2, p0, Lcom/google/android/gms/b/fe;->j:Z

    iput-object v1, p0, Lcom/google/android/gms/b/fe;->m:Lcom/google/android/gms/b/au;

    iput-boolean v3, p0, Lcom/google/android/gms/b/fe;->n:Z

    iput-object v1, p0, Lcom/google/android/gms/b/fe;->o:Lcom/google/android/gms/b/u;

    iput-object v1, p0, Lcom/google/android/gms/b/fe;->p:Lcom/google/android/gms/b/v;

    iput-object v1, p0, Lcom/google/android/gms/b/fe;->q:Lcom/google/android/gms/b/t;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/fe;->r:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/google/android/gms/b/fe;->s:Lcom/google/android/gms/b/fa;

    iput-object v1, p0, Lcom/google/android/gms/b/fe;->t:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/google/android/gms/b/fe;->v:Z

    iput-boolean v2, p0, Lcom/google/android/gms/b/fe;->w:Z

    invoke-virtual {p1}, Lcom/google/android/gms/b/fq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/fe;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/b/ff;

    iget-object v1, p0, Lcom/google/android/gms/b/fe;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/ff;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/b/fe;->c:Lcom/google/android/gms/b/ff;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/au;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/fe;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/fe;->m:Lcom/google/android/gms/b/au;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/fe;->l:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/fe;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/fe;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/r;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/fe;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/b/fe;->t:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/b/fa;

    iget-object v1, p0, Lcom/google/android/gms/b/fe;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/fe;->l:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/b/fa;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/b/fa;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/fe;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/fe;->u:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/fe;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/fe;->t:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
