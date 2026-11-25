.class public final Lcom/google/android/gms/b/qp;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/qn;
    .locals 8

    new-instance v0, Lcom/google/android/gms/b/qn;

    iget-boolean v1, p0, Lcom/google/android/gms/b/qp;->a:Z

    iget-boolean v2, p0, Lcom/google/android/gms/b/qp;->b:Z

    iget-object v3, p0, Lcom/google/android/gms/b/qp;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/b/qp;->d:Z

    iget-object v5, p0, Lcom/google/android/gms/b/qp;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/b/qp;->f:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/qn;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/b/qo;)V

    return-object v0
.end method
