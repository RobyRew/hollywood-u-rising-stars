.class final Lcom/leanplum/annotations/b;
.super Lcom/leanplum/callbacks/VariableCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/leanplum/callbacks/VariableCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/ref/WeakReference;

.field private synthetic b:Z

.field private synthetic c:Ljava/lang/reflect/Field;

.field private synthetic d:Lcom/leanplum/Var;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;ZLjava/lang/reflect/Field;Lcom/leanplum/Var;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/leanplum/annotations/b;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/leanplum/annotations/b;->b:Z

    iput-object p3, p0, Lcom/leanplum/annotations/b;->c:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lcom/leanplum/annotations/b;->d:Lcom/leanplum/Var;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lcom/leanplum/Var;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leanplum/Var",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/leanplum/annotations/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget-boolean v1, p0, Lcom/leanplum/annotations/b;->b:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/leanplum/annotations/b;->c:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/leanplum/annotations/b;->d:Lcom/leanplum/Var;

    invoke-virtual {v0, p0}, Lcom/leanplum/Var;->removeFileReadyHandler(Lcom/leanplum/callbacks/VariableCallback;)V

    .line 87
    :cond_2
    :goto_0
    return-void

    .line 73
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/leanplum/annotations/b;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    .line 74
    if-nez v1, :cond_4

    .line 75
    iget-object v2, p0, Lcom/leanplum/annotations/b;->c:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    :cond_4
    iget-object v2, p0, Lcom/leanplum/annotations/b;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/leanplum/annotations/b;->d:Lcom/leanplum/Var;

    invoke-virtual {v3}, Lcom/leanplum/Var;->fileValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    if-nez v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/leanplum/annotations/b;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 82
    const-string/jumbo v2, "Leanplum"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Invalid value "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leanplum/annotations/b;->d:Lcom/leanplum/Var;

    invoke-virtual {v0}, Lcom/leanplum/Var;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " for field "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/leanplum/annotations/b;->d:Lcom/leanplum/Var;

    invoke-virtual {v3}, Lcom/leanplum/Var;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error setting value for field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/leanplum/annotations/b;->d:Lcom/leanplum/Var;

    invoke-virtual {v3}, Lcom/leanplum/Var;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
