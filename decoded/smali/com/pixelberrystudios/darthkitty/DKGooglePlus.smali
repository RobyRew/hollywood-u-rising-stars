.class public Lcom/pixelberrystudios/darthkitty/DKGooglePlus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/aa",
        "<",
        "Lcom/google/android/gms/plus/d;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/pixelberrystudios/darthkitty/DKGooglePlus;


# instance fields
.field private b:Lcom/google/android/gms/common/api/n;

.field private c:Z

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->d:Ljava/util/Vector;

    return-void
.end method

.method protected static native DKGameCenterOnPeopleLoadedError()V
.end method

.method protected static native DKGameCenterOnPeopleLoadedSuccess([Lcom/google/android/gms/plus/model/people/Person;)V
.end method

.method private a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->b:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must call setPlusClient()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/pixelberrystudios/darthkitty/DKGooglePlus;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->a:Lcom/pixelberrystudios/darthkitty/DKGooglePlus;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->a:Lcom/pixelberrystudios/darthkitty/DKGooglePlus;

    .line 38
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->a:Lcom/pixelberrystudios/darthkitty/DKGooglePlus;

    return-object v0
.end method


# virtual methods
.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->a()V

    .line 47
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->b:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string/jumbo v0, "DKGooglePlus"

    const-string/jumbo v1, "plusClient is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/plus/e;->g:Lcom/google/android/gms/plus/c;

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->b:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/c;->a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    goto :goto_0
.end method

.method public loadVisiblePeople()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->a()V

    .line 56
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->b:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string/jumbo v0, "DKGooglePlus"

    const-string/jumbo v1, "plusClient is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->DKGameCenterOnPeopleLoadedError()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->c:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->c:Z

    .line 67
    sget-object v0, Lcom/google/android/gms/plus/e;->g:Lcom/google/android/gms/plus/c;

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->b:Lcom/google/android/gms/common/api/n;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/c;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/z;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/gms/plus/d;

    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->onResult(Lcom/google/android/gms/plus/d;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/plus/d;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-interface {p1}, Lcom/google/android/gms/plus/d;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 80
    invoke-interface {p1}, Lcom/google/android/gms/plus/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {p1}, Lcom/google/android/gms/plus/d;->a()Lcom/google/android/gms/plus/model/people/PersonBuffer;

    move-result-object v4

    .line 82
    const-string/jumbo v5, "DKGooglePlus"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPeopleLoaded, success: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", size = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_0

    const-string/jumbo v0, "null"

    .line 83
    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", nextPageToken = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 85
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->d:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    if-eqz v3, :cond_3

    .line 89
    sget-object v0, Lcom/google/android/gms/plus/e;->g:Lcom/google/android/gms/plus/c;

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->b:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/plus/c;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 104
    :cond_2
    :goto_2
    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->d:Ljava/util/Vector;

    new-array v2, v1, [Lcom/google/android/gms/plus/model/people/Person;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/plus/model/people/Person;

    .line 93
    iput-boolean v1, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->c:Z

    .line 94
    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->DKGameCenterOnPeopleLoadedSuccess([Lcom/google/android/gms/plus/model/people/Person;)V

    .line 95
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 96
    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    goto :goto_2

    .line 101
    :cond_4
    iput-boolean v1, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->c:Z

    .line 102
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->DKGameCenterOnPeopleLoadedError()V

    goto :goto_2
.end method

.method public setPlusClient(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->b:Lcom/google/android/gms/common/api/n;

    .line 43
    return-void
.end method
