package androidx.datastore.core.okio;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.datastore.core.ReadScope;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;

/* compiled from: OkioStorage.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJ\b\u0010\u0012\u001a\u00020\u0013H\u0004J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\u000e\u0010\u0015\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Landroidx/datastore/core/okio/OkioReadScope;", "T", "Landroidx/datastore/core/ReadScope;", "fileSystem", "Lokio/FileSystem;", "path", "Lokio/Path;", "serializer", "Landroidx/datastore/core/okio/OkioSerializer;", "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V", "closed", "Landroidx/datastore/core/okio/AtomicBoolean;", "getFileSystem", "()Lokio/FileSystem;", "getPath", "()Lokio/Path;", "getSerializer", "()Landroidx/datastore/core/okio/OkioSerializer;", "checkClose", "", "close", "readData", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes.dex */
public class OkioReadScope<T> implements ReadScope<T> {
    private final AtomicBoolean closed;
    private final FileSystem fileSystem;
    private final Path path;
    private final OkioSerializer<T> serializer;

    @Override // androidx.datastore.core.ReadScope
    public Object readData(Continuation<? super T> continuation) {
        return readData$suspendImpl(this, continuation);
    }

    public OkioReadScope(FileSystem fileSystem, Path path, OkioSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.fileSystem = fileSystem;
        this.path = path;
        this.serializer = serializer;
        this.closed = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Path getPath() {
        return this.path;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final OkioSerializer<T> getSerializer() {
        return this.serializer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(6:1|(2:3|(4:5|6|7|8))|89|6|7|8) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0113, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0117, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0119, code lost:
    
        kotlin.ExceptionsKt.addSuppressed(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c9, code lost:
    
        if (r7.fileSystem.exists(r7.path) != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00cb, code lost:
    
        r14 = r7.fileSystem;
        r2 = r7.path;
        r5 = okio.Okio.buffer(r14.source(r2));
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00de, code lost:
    
        r8 = r5;
        r11 = r7.serializer;
        r15.L$0 = r5;
        r15.L$1 = null;
        r15.label = 2;
        r3 = r11.readFrom(r8, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f1, code lost:
    
        if (r3 == r1) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00f3, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f4, code lost:
    
        r4 = r3;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x010a, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x010b, code lost:
    
        r3 = null;
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:?, code lost:
    
        return r7.serializer.getDefaultValue();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0023. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0113 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b9 A[Catch: FileNotFoundException -> 0x00c0, TryCatch #0 {FileNotFoundException -> 0x00c0, blocks: (B:45:0x00b9, B:47:0x00bf, B:63:0x00b1, B:65:0x0063, B:60:0x00ab), top: B:7:0x0023, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bf A[Catch: FileNotFoundException -> 0x00c0, TRY_LEAVE, TryCatch #0 {FileNotFoundException -> 0x00c0, blocks: (B:45:0x00b9, B:47:0x00bf, B:63:0x00b1, B:65:0x0063, B:60:0x00ab), top: B:7:0x0023, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <T> java.lang.Object readData$suspendImpl(androidx.datastore.core.okio.OkioReadScope<T> r14, kotlin.coroutines.Continuation<? super T> r15) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.okio.OkioReadScope.readData$suspendImpl(androidx.datastore.core.okio.OkioReadScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkClose() {
        if (!(!this.closed.get())) {
            throw new IllegalStateException("This scope has already been closed.".toString());
        }
    }
}
