using System.Collections.Generic;
using System.IO;
using simple.migrations.Data;

namespace simple.migrations.io
{
    public class WindowsFileSystem : FileSystem
    {
        public IEnumerable<SqlFile> all_sql_files_from(string directory)
        {
            foreach (var file in Directory.GetFiles(directory, "*.sql", SearchOption.AllDirectories))
            {
                yield return file;
            }
        }
    }
}