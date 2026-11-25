.class public Lcom/google/android/gms/b/ff;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# instance fields
.field a:J

.field b:J

.field c:I

.field final d:Ljava/lang/String;

.field e:I

.field f:I

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/b/ff;->a:J

    iput-wide v2, p0, Lcom/google/android/gms/b/ff;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/ff;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/ff;->g:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/b/ff;->e:I

    iput v1, p0, Lcom/google/android/gms/b/ff;->f:I

    iput-object p1, p0, Lcom/google/android/gms/b/ff;->d:Ljava/lang/String;

    return-void
.end method
