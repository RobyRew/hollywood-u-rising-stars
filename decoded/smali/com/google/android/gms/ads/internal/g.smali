.class public Lcom/google/android/gms/ads/internal/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/ads/internal/g;


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/request/b;

.field private final d:Lcom/google/android/gms/ads/internal/overlay/a;

.field private final e:Lcom/google/android/gms/ads/internal/overlay/j;

.field private final f:Lcom/google/android/gms/b/ey;

.field private final g:Lcom/google/android/gms/b/fq;

.field private final h:Lcom/google/android/gms/b/hb;

.field private final i:Lcom/google/android/gms/b/fs;

.field private final j:Lcom/google/android/gms/b/fe;

.field private final k:Lcom/google/android/gms/b/kz;

.field private final l:Lcom/google/android/gms/b/av;

.field private final m:Lcom/google/android/gms/b/fc;

.field private final n:Lcom/google/android/gms/b/aq;

.field private final o:Lcom/google/android/gms/b/ap;

.field private final p:Lcom/google/android/gms/b/ar;

.field private final q:Lcom/google/android/gms/ads/internal/purchase/g;

.field private final r:Lcom/google/android/gms/b/cs;

.field private final s:Lcom/google/android/gms/b/gl;

.field private final t:Lcom/google/android/gms/b/cx;

.field private final u:Lcom/google/android/gms/ads/internal/f;

.field private final v:Lcom/google/android/gms/b/co;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/g;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/g;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/g;->a(Lcom/google/android/gms/ads/internal/g;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->c:Lcom/google/android/gms/ads/internal/request/b;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->d:Lcom/google/android/gms/ads/internal/overlay/a;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->e:Lcom/google/android/gms/ads/internal/overlay/j;

    new-instance v0, Lcom/google/android/gms/b/ey;

    invoke-direct {v0}, Lcom/google/android/gms/b/ey;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/b/ey;

    new-instance v0, Lcom/google/android/gms/b/fq;

    invoke-direct {v0}, Lcom/google/android/gms/b/fq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->g:Lcom/google/android/gms/b/fq;

    new-instance v0, Lcom/google/android/gms/b/hb;

    invoke-direct {v0}, Lcom/google/android/gms/b/hb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/b/hb;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/google/android/gms/b/fs;->a(I)Lcom/google/android/gms/b/fs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->i:Lcom/google/android/gms/b/fs;

    new-instance v0, Lcom/google/android/gms/b/fe;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->g:Lcom/google/android/gms/b/fq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/fe;-><init>(Lcom/google/android/gms/b/fq;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->j:Lcom/google/android/gms/b/fe;

    new-instance v0, Lcom/google/android/gms/b/lb;

    invoke-direct {v0}, Lcom/google/android/gms/b/lb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->k:Lcom/google/android/gms/b/kz;

    new-instance v0, Lcom/google/android/gms/b/av;

    invoke-direct {v0}, Lcom/google/android/gms/b/av;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->l:Lcom/google/android/gms/b/av;

    new-instance v0, Lcom/google/android/gms/b/fc;

    invoke-direct {v0}, Lcom/google/android/gms/b/fc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->m:Lcom/google/android/gms/b/fc;

    new-instance v0, Lcom/google/android/gms/b/aq;

    invoke-direct {v0}, Lcom/google/android/gms/b/aq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->n:Lcom/google/android/gms/b/aq;

    new-instance v0, Lcom/google/android/gms/b/ap;

    invoke-direct {v0}, Lcom/google/android/gms/b/ap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->o:Lcom/google/android/gms/b/ap;

    new-instance v0, Lcom/google/android/gms/b/ar;

    invoke-direct {v0}, Lcom/google/android/gms/b/ar;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->p:Lcom/google/android/gms/b/ar;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/g;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/purchase/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->q:Lcom/google/android/gms/ads/internal/purchase/g;

    new-instance v0, Lcom/google/android/gms/b/cs;

    invoke-direct {v0}, Lcom/google/android/gms/b/cs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->r:Lcom/google/android/gms/b/cs;

    new-instance v0, Lcom/google/android/gms/b/gl;

    invoke-direct {v0}, Lcom/google/android/gms/b/gl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->s:Lcom/google/android/gms/b/gl;

    new-instance v0, Lcom/google/android/gms/b/cx;

    invoke-direct {v0}, Lcom/google/android/gms/b/cx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->t:Lcom/google/android/gms/b/cx;

    new-instance v0, Lcom/google/android/gms/ads/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->u:Lcom/google/android/gms/ads/internal/f;

    new-instance v0, Lcom/google/android/gms/b/co;

    invoke-direct {v0}, Lcom/google/android/gms/b/co;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/g;->v:Lcom/google/android/gms/b/co;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/overlay/a;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->d:Lcom/google/android/gms/ads/internal/overlay/a;

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/ads/internal/g;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/ads/internal/g;->b:Lcom/google/android/gms/ads/internal/g;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Lcom/google/android/gms/ads/internal/overlay/j;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->e:Lcom/google/android/gms/ads/internal/overlay/j;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/b/fq;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->g:Lcom/google/android/gms/b/fq;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/b/hb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/b/hb;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/b/fs;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->i:Lcom/google/android/gms/b/fs;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/b/fe;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->j:Lcom/google/android/gms/b/fe;

    return-object v0
.end method

.method public static g()Lcom/google/android/gms/b/kz;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->k:Lcom/google/android/gms/b/kz;

    return-object v0
.end method

.method public static h()Lcom/google/android/gms/b/ap;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->o:Lcom/google/android/gms/b/ap;

    return-object v0
.end method

.method public static i()Lcom/google/android/gms/b/ar;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->p:Lcom/google/android/gms/b/ar;

    return-object v0
.end method

.method public static j()Lcom/google/android/gms/ads/internal/purchase/g;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->q:Lcom/google/android/gms/ads/internal/purchase/g;

    return-object v0
.end method

.method public static k()Lcom/google/android/gms/b/co;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->l()Lcom/google/android/gms/ads/internal/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->v:Lcom/google/android/gms/b/co;

    return-object v0
.end method

.method private static l()Lcom/google/android/gms/ads/internal/g;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/g;->b:Lcom/google/android/gms/ads/internal/g;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
