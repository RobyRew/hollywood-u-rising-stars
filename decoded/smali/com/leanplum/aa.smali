.class final Lcom/leanplum/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/y;


# direct methods
.method constructor <init>(Lcom/leanplum/y;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/leanplum/aa;->a:Lcom/leanplum/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/aa;->a:Lcom/leanplum/y;

    invoke-virtual {v0}, Lcom/leanplum/y;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
