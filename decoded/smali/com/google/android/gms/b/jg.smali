.class public Lcom/google/android/gms/b/jg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/d;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Lcom/google/android/gms/b/jk;

.field private static final c:J


# instance fields
.field private final d:Lcom/google/android/gms/b/kz;

.field private final e:Lcom/google/android/gms/b/ji;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private final h:J

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/common/api/n;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/jg;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/jk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/jk;-><init>(Lcom/google/android/gms/b/jh;)V

    sput-object v0, Lcom/google/android/gms/b/jg;->b:Lcom/google/android/gms/b/jk;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/b/jg;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/b/lb;

    invoke-direct {v0}, Lcom/google/android/gms/b/lb;-><init>()V

    sget-wide v2, Lcom/google/android/gms/b/jg;->c:J

    new-instance v1, Lcom/google/android/gms/b/jj;

    invoke-direct {v1}, Lcom/google/android/gms/b/jj;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/b/jg;-><init>(Lcom/google/android/gms/b/kz;JLcom/google/android/gms/b/ji;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/b/kz;JLcom/google/android/gms/b/ji;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/jg;->f:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/b/jg;->g:J

    iput-object v2, p0, Lcom/google/android/gms/b/jg;->i:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/b/jg;->j:Lcom/google/android/gms/common/api/n;

    new-instance v0, Lcom/google/android/gms/b/jh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/jh;-><init>(Lcom/google/android/gms/b/jg;)V

    iput-object v0, p0, Lcom/google/android/gms/b/jg;->k:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/b/jg;->d:Lcom/google/android/gms/b/kz;

    iput-wide p2, p0, Lcom/google/android/gms/b/jg;->h:J

    iput-object p4, p0, Lcom/google/android/gms/b/jg;->e:Lcom/google/android/gms/b/ji;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/jg;Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/n;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/jg;->j:Lcom/google/android/gms/common/api/n;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/jg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/jg;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/jg;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/b/jg;->g:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/jg;)Lcom/google/android/gms/b/kz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/jg;->d:Lcom/google/android/gms/b/kz;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/b/jg;)Lcom/google/android/gms/common/api/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/jg;->j:Lcom/google/android/gms/common/api/n;

    return-object v0
.end method
