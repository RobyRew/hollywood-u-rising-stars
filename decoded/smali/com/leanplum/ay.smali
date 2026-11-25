.class final Lcom/leanplum/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/aw;


# direct methods
.method constructor <init>(Lcom/leanplum/aw;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/leanplum/ay;->a:Lcom/leanplum/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/leanplum/ay;->a:Lcom/leanplum/aw;

    iget-object v0, v0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/leanplum/ay;->a:Lcom/leanplum/aw;

    iget-object v1, v1, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget v1, v1, Lcom/leanplum/au;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    iget-object v0, p0, Lcom/leanplum/ay;->a:Lcom/leanplum/aw;

    iget-object v0, v0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    const-string/jumbo v1, "2:::"

    invoke-virtual {v0, v1}, Lcom/leanplum/ci;->a(Ljava/lang/String;)V

    .line 200
    return-void
.end method
